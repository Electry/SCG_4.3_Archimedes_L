.class Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;
.super Ljava/lang/Object;
.source "RewindMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySelectCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RewindMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/mode/RewindMode$1;

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    return-void
.end method


# virtual methods
.method public onViewClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 695
    const-string v0, "REwindMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewClick() index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # setter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$602(Lcom/lenovo/scg/camera/mode/RewindMode;I)I

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode;->onOkClick()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$700(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    .line 698
    return-void
.end method
