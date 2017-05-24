.class Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;
.super Landroid/view/View;
.source "SimpleSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayView"
.end annotation


# static fields
.field private static final CLICK_RANGE:F = 3.0f


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 758
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 759
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40400000    # 3.0f

    .line 768
    const-string v3, "SimpleSlidingDrawer"

    const-string v4, "OverlayView, onTouchEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # invokes: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->LocalRootViewUP()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$1600(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 774
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 776
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 777
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 778
    .local v2, "y":F
    if-nez v0, :cond_1

    .line 779
    iput v1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mDownX:F

    .line 780
    iput v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mDownY:F

    .line 788
    :cond_0
    :goto_0
    return v6

    .line 781
    :cond_1
    if-ne v0, v6, :cond_0

    .line 782
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 783
    iget v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mDownX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mDownY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 784
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 764
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    return-void
.end method
