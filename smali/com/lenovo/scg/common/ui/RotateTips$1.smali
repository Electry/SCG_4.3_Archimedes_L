.class Lcom/lenovo/scg/common/ui/RotateTips$1;
.super Landroid/os/Handler;
.source "RotateTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/ui/RotateTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/RotateTips;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/RotateTips;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/RotateTips$1;->this$0:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips$1;->this$0:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->hideTips()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
