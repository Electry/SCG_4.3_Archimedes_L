.class Lcom/lenovo/scg/common/animation/LoadingAnimation$1;
.super Landroid/os/Handler;
.source "LoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/LoadingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/LoadingAnimation;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/LoadingAnimation;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 718
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 729
    :goto_0
    return-void

    .line 721
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation$1;->this$0:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->aniStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
