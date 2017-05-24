.class public Lcom/lenovo/scg/gallery3d/ui/LeftPanel;
.super Landroid/widget/LinearLayout;
.source "LeftPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;
    }
.end annotation


# static fields
.field private static final STEP_SIZE:I = 0x3c


# instance fields
.field private isShowing:Z

.field private left_panel_width:I

.field private mAlphaDownAnim:Landroid/view/animation/Animation;

.field private mAlphaDownAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAlphaUpAnim:Landroid/view/animation/Animation;

.field private mAlphaUpAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

.field private mGalleryPageContainer:Landroid/widget/LinearLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftMenuBtn:Landroid/widget/ImageButton;

.field private mMainPageCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->left_panel_width:I

    .line 31
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->isShowing:Z

    .line 222
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaUpAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 238
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 47
    const v1, 0x7f050023

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaUpAnim:Landroid/view/animation/Animation;

    .line 48
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaUpAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaUpAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49
    const v1, 0x7f050022

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 54
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->left_panel_width:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->setLongClickable(Z)V

    .line 58
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LeftPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->isShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->left_panel_width:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mLeftMenuBtn:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public isPanleShow()Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->toggleOffPanle()V

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 199
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "bindView"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGalleryPageContainer:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGalleryPageContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f1005a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGalleryPageContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f10065f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGalleryPageContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f10065b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mLeftMenuBtn:Landroid/widget/ImageButton;

    .line 67
    return-void
.end method

.method public toggleOffPanle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-ltz v1, :cond_0

    .line 110
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    new-array v2, v5, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, -0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mLeftMenuBtn:Landroid/widget/ImageButton;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public toggleOffPanleNoAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-ltz v1, :cond_0

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    new-array v2, v5, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, -0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mLeftMenuBtn:Landroid/widget/ImageButton;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 131
    return-void
.end method

.method public togglePanel()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEnabled(Z)V

    .line 81
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->isShowing:Z

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-gez v1, :cond_2

    .line 84
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 97
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->isShowing:Z

    .line 99
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void

    .line 89
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-ltz v1, :cond_0

    .line 90
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;-><init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, -0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$AsynTaskShowLeftPanel;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mMainPageCover:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mAlphaDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEnabled(Z)V

    goto :goto_0
.end method
