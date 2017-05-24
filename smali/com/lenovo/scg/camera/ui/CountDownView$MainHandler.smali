.class Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;
.super Landroid/os/Handler;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/CountDownView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/ui/CountDownView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;->this$0:Lcom/lenovo/scg/camera/ui/CountDownView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/ui/CountDownView;Lcom/lenovo/scg/camera/ui/CountDownView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/ui/CountDownView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/ui/CountDownView$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;-><init>(Lcom/lenovo/scg/camera/ui/CountDownView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;->this$0:Lcom/lenovo/scg/camera/ui/CountDownView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;->this$0:Lcom/lenovo/scg/camera/ui/CountDownView;

    # getter for: Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/CountDownView;->access$100(Lcom/lenovo/scg/camera/ui/CountDownView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # invokes: Lcom/lenovo/scg/camera/ui/CountDownView;->remainingSecondsChanged(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/CountDownView;->access$200(Lcom/lenovo/scg/camera/ui/CountDownView;I)V

    .line 141
    :cond_0
    return-void
.end method
