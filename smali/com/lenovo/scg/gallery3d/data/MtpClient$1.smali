.class Lcom/lenovo/scg/gallery3d/data/MtpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/MtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/MtpClient;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string v7, "device"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 82
    .local v6, "usbDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$000(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 85
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$000(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpDevice;

    .line 87
    .local v4, "mtpDevice":Landroid/mtp/MtpDevice;
    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    if-nez v4, :cond_0

    .line 89
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # invokes: Lcom/lenovo/scg/gallery3d/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$100(Lcom/lenovo/scg/gallery3d/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v4

    .line 91
    :cond_0
    if-eqz v4, :cond_5

    .line 92
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$200(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;

    .line 93
    .local v3, "listener":Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;
    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;->deviceAdded(Landroid/mtp/MtpDevice;)V

    goto :goto_0

    .line 123
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;
    .end local v4    # "mtpDevice":Landroid/mtp/MtpDevice;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 96
    .restart local v4    # "mtpDevice":Landroid/mtp/MtpDevice;
    :cond_1
    :try_start_1
    const-string v7, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    if-eqz v4, :cond_5

    .line 98
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$000(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$300(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$400(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$200(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;

    .line 102
    .restart local v3    # "listener":Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;
    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;->deviceRemoved(Landroid/mtp/MtpDevice;)V

    goto :goto_1

    .line 105
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;
    :cond_2
    const-string v7, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 106
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$300(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    const-string/jumbo v7, "permission"

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 108
    .local v5, "permission":Z
    const-string v7, "MtpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_USB_PERMISSION: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v5, :cond_4

    .line 110
    if-nez v4, :cond_3

    .line 111
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # invokes: Lcom/lenovo/scg/gallery3d/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$100(Lcom/lenovo/scg/gallery3d/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v4

    .line 113
    :cond_3
    if-eqz v4, :cond_5

    .line 114
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$200(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;

    .line 115
    .restart local v3    # "listener":Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;
    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;->deviceAdded(Landroid/mtp/MtpDevice;)V

    goto :goto_2

    .line 120
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/lenovo/scg/gallery3d/data/MtpClient$Listener;
    :cond_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/MtpClient$1;->this$0:Lcom/lenovo/scg/gallery3d/data/MtpClient;

    # getter for: Lcom/lenovo/scg/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/MtpClient;->access$400(Lcom/lenovo/scg/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "permission":Z
    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-void
.end method
