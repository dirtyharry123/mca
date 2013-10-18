#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/stat.h>
#include <linux/sched.h>
#include "hook.h"

extern signed long schedule_timeout(signed long);

signed long my_schedule_timeout(signed long timeout){
    if(timeout == 100000){
        set_current_state(TASK_INTERRUPTIBLE);
        timeout = 5;
    }
    return HOOK_INVOKE(schedule_timeout, timeout);
}

struct hook_info g_hi[] = {
    HOOK_INIT(schedule_timeout, my_schedule_timeout),
    HOOK_INIT_END
};

static int __init fix_init(void)
{
    hook_init();
    return 0;
}

static void __exit fix_exit(void)
{
    hook_exit();
}

module_init(fix_init);
module_exit(fix_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("dirtyharry123");

