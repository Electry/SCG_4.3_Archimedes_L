.class public Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
.super Landroid/widget/FrameLayout;
.source "SimpleSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;,
        Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;,
        Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;,
        Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0xdc

.field private static final INTERPOLATOR:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "SimpleSlidingDrawer"


# instance fields
.field private mAboveView:Landroid/view/ViewGroup;

.field private mAlphaDownAnim:Landroid/view/animation/Animation;

.field private mAlphaUpAnim:Landroid/view/animation/Animation;

.field private mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

.field private mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDurationLeft:I

.field private mDurationRight:I

.field private mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

.field private mLeftBehindBase:Landroid/widget/LinearLayout;

.field private mLeftBehindViewWidth:I

.field private mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

.field private mLeftMenuBtn:Landroid/widget/ImageButton;

.field private mMainPageCover:Landroid/view/View;

.field private mOverlay:Landroid/view/View;

.field private mRightBehindBase:Landroid/widget/LinearLayout;

.field private mRightBehindViewWidth:I

.field private mRightDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

.field private mScroller:Landroid/widget/Scroller;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 266
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/16 v1, 0xdc

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;-><init>(Landroid/app/Activity;Landroid/view/animation/Interpolator;I)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/animation/Interpolator;I)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "ip"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # I

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v9, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    .line 203
    new-instance v9, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$2;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$2;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    .line 271
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 272
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v9, "wwf5"

    const-string v10, "SimpleSlidingDrawer start"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    .line 275
    move/from16 v0, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationLeft:I

    .line 276
    move/from16 v0, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationRight:I

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mWindow:Landroid/view/Window;

    .line 278
    new-instance v9, Landroid/widget/Scroller;

    move-object/from16 v0, p2

    invoke-direct {v9, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    .line 280
    const/4 v5, -0x1

    .line 281
    .local v5, "fp":I
    const/4 v8, -0x2

    .line 283
    .local v8, "wp":I
    new-instance v9, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    invoke-direct {v9, p0, v2}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    .line 284
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->setOrientation(I)V

    .line 288
    new-instance v9, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    invoke-direct {v9, p0, v2}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    .line 289
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v9, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    invoke-direct {v9, p0, v2}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    .line 293
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->addView(Landroid/view/View;)V

    .line 302
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    .line 303
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v9, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$OverlayView;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    .line 308
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x50

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    new-instance v10, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$3;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 325
    .local v4, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 326
    .local v3, "count":I
    const-string v9, "SimpleSlidingDrawer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SimpleSideDrawer, decorview child count11111="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 332
    .local v1, "above":Landroid/view/ViewGroup;
    const-string v9, "SimpleSlidingDrawer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SimpleSideDrawer, above="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 335
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 338
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v7, "shadow":Landroid/widget/ImageView;
    const v9, 0x7f0207b3

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090137

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 356
    const v9, 0x7f1005a8

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 357
    const v9, 0x7f10065f

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    .line 358
    const-string v9, "SimpleSlidingDrawer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMainPageCover="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const v9, 0x7f10065b

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftMenuBtn:Landroid/widget/ImageButton;

    .line 362
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->createAlphaAnimation()V

    .line 363
    const-string/jumbo v9, "wwf5"

    const-string v10, "SimpleSlidingDrawer end"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method private LocalRootViewDown()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftMenuBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_0
    return-void
.end method

.method private LocalRootViewUP()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftMenuBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindViewWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->LocalRootViewUP()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    return-object v0
.end method

.method private createAlphaAnimation()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    const v1, 0x7f050023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAlphaUpAnim:Landroid/view/animation/Animation;

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAlphaUpAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$4;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    const v1, 0x7f050022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAlphaDownAnim:Landroid/view/animation/Animation;

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAlphaDownAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$5;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    return-void
.end method

.method private isLeftSideOpened()Z
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRightSideOpened()Z
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeLeftSide()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 548
    const-string v0, "SimpleSlidingDrawer"

    const-string v3, "closeLeftSide"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->LocalRootViewUP()V

    .line 552
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    neg-int v1, v0

    .line 553
    .local v1, "curX":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationLeft:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 554
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    .line 555
    return-void
.end method

.method public closeRightSide()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 561
    iget v1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindViewWidth:I

    .line 562
    .local v1, "curX":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationRight:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 563
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    .line 564
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 680
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 682
    .local v0, "x":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 683
    .local v1, "y":I
    const-string v2, "SimpleSlidingDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeScroll, mScroller.computeScrollOffset(), x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 685
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    .line 687
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->changeColor(I)V

    .line 688
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->invalidate()V

    .line 706
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    if-nez v2, :cond_2

    .line 692
    const-string v2, "SimpleSlidingDrawer"

    const-string v3, "computeScroll, mAboveView.getScrollX()=0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 697
    :cond_2
    const-string v2, "SimpleSlidingDrawer"

    const-string v3, "computeScroll, mAboveView.getScrollX()!=0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    neg-int v3, v3

    if-gt v2, v3, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->LocalRootViewDown()V

    goto :goto_0
.end method

.method public getLeftBehindView()Landroid/view/View;
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRightBehindView()Landroid/view/View;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 649
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 651
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    .line 652
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindViewWidth:I

    .line 654
    const-string v2, "SimpleSlidingDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMeasure, mLeftBehindViewWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightBehindViewWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 657
    .local v0, "decor":Landroid/view/ViewGroup;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 660
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 661
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$BehindLinearLayout;->fitDisplay(Landroid/graphics/Rect;)V

    .line 662
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isLeftSideOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v1, "onTouchEvent, isLeftSideOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 722
    :goto_0
    return v0

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isRightSideOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v1, "onTouchEvent, isRightSideOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v1, "onTouchEvent, return true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openLeftSide()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 570
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v3, "openLeftSide"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->LocalRootViewDown()V

    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090360

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    .line 579
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 580
    .local v1, "curX":I
    const-string v0, "SimpleSlidingDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openLeftSide, curX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftBehindViewWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I

    neg-int v3, v3

    iget v5, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationLeft:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 582
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    .line 583
    return-void
.end method

.method public openRightSide()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 590
    .local v1, "curX":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindViewWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationRight:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 591
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    .line 592
    return-void
.end method

.method public scrolltozero()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 666
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->LocalRootViewUP()V

    .line 673
    return-void
.end method

.method public setAnimationDurationLeft(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationLeft:I

    .line 514
    return-void
.end method

.method public setAnimationDurationRight(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 523
    iput p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationRight:I

    .line 524
    return-void
.end method

.method public setLeftBehindContentView(I)Landroid/view/View;
    .locals 6
    .param p1, "leftBehindLayout"    # I

    .prologue
    .line 456
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 460
    .local v0, "content":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 464
    .local v1, "rl":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    .line 465
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 466
    .local v2, "width":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    return-object v0
.end method

.method public setLocalPageNotAlphaChange()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mMainPageCover:Landroid/view/View;

    .line 368
    return-void
.end method

.method public setRightBehindContentView(I)Landroid/view/View;
    .locals 3
    .param p1, "rightBehindLayout"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mRightBehindBase:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, "content":Landroid/view/View;
    return-object v0
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "ip"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 503
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;

    .line 504
    return-void
.end method

.method public toggleLeftDrawer()V
    .locals 2

    .prologue
    .line 599
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v1, "toggleLeftDrawer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->reset()V

    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->invalidate()V

    .line 603
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v1, "toggleLeftDrawer, isClosed, to open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->openLeftSide()V

    .line 613
    :goto_0
    return-void

    .line 608
    :cond_0
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v1, "toggleLeftDrawer, isOpened, to close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->closeLeftSide()V

    goto :goto_0
.end method

.method public toggleRightDrawer()V
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->openRightSide()V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->closeRightSide()V

    goto :goto_0
.end method
