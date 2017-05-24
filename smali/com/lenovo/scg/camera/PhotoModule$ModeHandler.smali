.class public Lcom/lenovo/scg/camera/PhotoModule$ModeHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeHandler"
.end annotation


# static fields
.field public static final MSG_MODE_UI_UPDATE:I = 0x1

.field public static final MSG_SUBTYPE_CHANGE_SIZE_WHEN_RESUM:I = 0x12

.field public static final MSG_SUBTYPE_CLEAR_SCREEN:I = 0x4

.field public static final MSG_SUBTYPE_CLEAR_SCREEN_WHITHOUT_ANIM:I = 0xf

.field public static final MSG_SUBTYPE_CONTINUOUS_SHOT_BACK_RIGHT_MODE:I = 0x8

.field public static final MSG_SUBTYPE_DISPLAY_SCREEN:I = 0x5

.field public static final MSG_SUBTYPE_ENABLE_SHUTTER_BUTTON:I = 0x13

.field public static final MSG_SUBTYPE_ENTER_RIGHT_MODE:I = 0x1

.field public static final MSG_SUBTYPE_FULLSCREEN_START:I = 0xb

.field public static final MSG_SUBTYPE_FULLSCREEN_STOP:I = 0xc

.field public static final MSG_SUBTYPE_MODE_RESUME:I = 0x6

.field public static final MSG_SUBTYPE_RESTART_PREVIEW:I = 0xe

.field public static final MSG_SUBTYPE_SET_FLASH_WHEN_START:I = 0x14

.field public static final MSG_SUBTYPE_SET_FOCUS_VISIBILE:I = 0x2

.field public static final MSG_SUBTYPE_SHOOTING_STOP:I = 0xd

.field public static final MSG_SUBTYPE_SHOW_SHUTTER_BUTTON:I = 0x9

.field public static final MSG_SUBTYPE_SHUTTER_RESTORE:I = 0x7

.field public static final MSG_SUBTYPE_START_PREVIEW:I = 0x10

.field public static final MSG_SUBTYPE_STOP_PREVIEW:I = 0x11

.field public static final MSG_SUBTYPE_UPDATE_STATUS_BUTTON:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 7866
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$ModeHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 7914
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7915
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 7927
    :goto_0
    return-void

    .line 7918
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$ModeHandler;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->handleModeMsg(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/lenovo/scg/camera/PhotoModule;->access$7400(Lcom/lenovo/scg/camera/PhotoModule;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7919
    :catch_0
    move-exception v0

    .line 7920
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "handleModeMsg %d error: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7921
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
