mode=`getprop debug.perfmond.atrace`

case "$mode"
    in "1")
        atrace --async_start -z -c -b 8192 gfx input view webview wm am sm audio video camera hal res dalvik rs power pm ss aidl sched irq freq idle binder_lock binder_driver memreclaim
        ;;
esac

case "$mode"
    in "2")
        atrace --async_stop
        ;;
esac

case "$mode"
    in "3")
        atrace --async_stop -z -c -o /data/local/traces/atrace_temp.log
        atrace --async_start -z -c -b 8192 gfx input view webview wm am sm audio video camera hal res dalvik rs power pm ss aidl sched irq freq idle binder_lock binder_driver memreclaim
        ;;
esac
