.class Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$1;
.super Landroid/os/Handler;
.source "MulitiFrameCaptureAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$1;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$1;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # invokes: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->startAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$000(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
