.class Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;
.super Ljava/lang/Object;
.source "VsignWayPositionDisplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->vSignAt(Landroid/content/Context;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    iput-object p2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$000(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # invokes: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->initDisplayerView()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$100(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$000(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "VsignWayPositionDisplayer"

    const-string/jumbo v1, "vSignAt() mDisplayerView == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$200(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->val$rect:Landroid/graphics/Rect;

    # invokes: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isRectValid(Landroid/graphics/Rect;)Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$300(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    const-string v0, "VsignWayPositionDisplayer"

    const-string/jumbo v1, "vSignAt(): is Rect show && rect is not valid && clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$202(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Z)Z

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$402(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$000(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->invalidate()V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "VsignWayPositionDisplayer"

    const-string/jumbo v1, "vSignAt(): is Rect show && rect is valid && update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$202(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Z)Z

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->val$rect:Landroid/graphics/Rect;

    # invokes: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->setRect2PosRect(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$500(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # invokes: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->tailor()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$600(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;->this$0:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    # getter for: Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->access$000(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->invalidate()V

    goto :goto_0
.end method
