.class Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1$1;
.super Ljava/lang/Thread;
.source "ContinuousShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1$1;->this$1:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1$1;->this$1:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->saveFile()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$300(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V

    .line 455
    return-void
.end method
