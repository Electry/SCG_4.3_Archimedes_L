.class Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;
.super Ljava/lang/Object;
.source "ArchSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setBindView(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 75
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;->OnArchSeekBarViewTouched(Landroid/view/MotionEvent;)V

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 78
    .local v2, "touch":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090442

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v0, v4

    .line 79
    .local v0, "bottom":I
    if-ge v2, v0, :cond_2

    .line 80
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getRotation()F

    move-result v3

    float-to-int v1, v3

    .line 81
    .local v1, "currentRotaionValue":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->lastRotationValue:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$100(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getCircleRotationPort(FF)F
    invoke-static {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$200(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;FF)F

    move-result v4

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;->OnRotationChangeFinished(F)V

    .line 83
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->lastRotationValue:I
    invoke-static {v3, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$102(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;I)I

    .line 86
    :cond_0
    const/4 v3, 0x0

    .line 98
    .end local v1    # "currentRotaionValue":I
    :cond_1
    :goto_0
    return v3

    .line 89
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 90
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getCircleRotationPort(FF)F
    invoke-static {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$200(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->rotateThumbPort(F)V

    .line 91
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getCircleRotationPort(FF)F
    invoke-static {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$200(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;FF)F

    move-result v5

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;->OnRotationChanged(F)V

    .line 94
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 95
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getRotation()F

    move-result v5

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;->OnRotationChangeFinished(F)V

    goto :goto_0
.end method
