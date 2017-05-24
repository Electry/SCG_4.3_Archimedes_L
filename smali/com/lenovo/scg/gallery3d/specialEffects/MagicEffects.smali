.class public Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;
.super Ljava/lang/Object;
.source "MagicEffects.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;


# instance fields
.field private bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private effect:Ljava/lang/String;

.field private mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

.field private mComicButton:Landroid/widget/ImageView;

.field private mComicText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDeFocusButton:Landroid/widget/ImageView;

.field private mDeFocusText:Landroid/widget/TextView;

.field private mGlassButton:Landroid/widget/ImageView;

.field private mGlassText:Landroid/widget/TextView;

.field private mHiImageView:Landroid/widget/ImageView;

.field private mIsCanClick:Z

.field private mLastOnClickText:Landroid/widget/TextView;

.field private mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOnTouchText:Landroid/widget/TextView;

.field private mOnTouchView:Landroid/widget/ImageView;

.field private mOpticalLensButton:Landroid/widget/ImageView;

.field private mOpticalLensText:Landroid/widget/TextView;

.field private mPinFocusButton:Landroid/widget/ImageView;

.field private mPinFocusText:Landroid/widget/TextView;

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

.field private mSketchButton:Landroid/widget/ImageView;

.field private mSketchText:Landroid/widget/TextView;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mStarButton:Landroid/widget/ImageView;

.field private mStarText:Landroid/widget/TextView;

.field private mTouchDownX:F

.field private mTouchUpX:F

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveButton:Landroid/widget/ImageView;

.field private mWaveText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mIsCanClick:Z

    .line 128
    const-string v3, ""

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mContext:Landroid/content/Context;

    move-object v3, p2

    .line 84
    check-cast v3, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    .line 85
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->setOnTouchViewListener(Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;)V

    .line 86
    check-cast p1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 88
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040185

    invoke-virtual {v0, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getLiveEffectManager()Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .line 95
    const v3, 0x7f10073e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 96
    .local v1, "parentView":Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 97
    const v3, 0x7f100937

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassButton:Landroid/widget/ImageView;

    .line 98
    const v3, 0x7f100934

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchButton:Landroid/widget/ImageView;

    .line 99
    const v3, 0x7f100939

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarButton:Landroid/widget/ImageView;

    .line 100
    const v3, 0x7f100936

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveButton:Landroid/widget/ImageView;

    .line 101
    const v3, 0x7f100938

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensButton:Landroid/widget/ImageView;

    .line 102
    const v3, 0x7f100935

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicButton:Landroid/widget/ImageView;

    .line 103
    const v3, 0x7f10093a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusButton:Landroid/widget/ImageView;

    .line 104
    const v3, 0x7f10093b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusButton:Landroid/widget/ImageView;

    .line 105
    const v3, 0x7f10092d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mHiImageView:Landroid/widget/ImageView;

    .line 107
    const v3, 0x7f10093f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassText:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f10093c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchText:Landroid/widget/TextView;

    .line 109
    const v3, 0x7f100941

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarText:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f10093e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveText:Landroid/widget/TextView;

    .line 111
    const v3, 0x7f100940

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensText:Landroid/widget/TextView;

    .line 112
    const v3, 0x7f10093d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicText:Landroid/widget/TextView;

    .line 113
    const v3, 0x7f100942

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusText:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f100943

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusText:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->initViewsBitmap()V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    .line 118
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private getTouchRect(II)Landroid/graphics/Rect;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 302
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getScrollX()I

    move-result v1

    add-int/2addr p1, v1

    .line 304
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 306
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    .line 351
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 309
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 312
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 316
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 318
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 322
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 330
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 334
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 336
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 339
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 340
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 342
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 345
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 346
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 347
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 348
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 351
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private resetTextColor()V
    .locals 3

    .prologue
    const v2, 0x7f0d009d

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    return-void
.end method

.method private resetViewBg(Ljava/lang/String;)V
    .locals 2
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 422
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 428
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 430
    :cond_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STARBURST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 432
    :cond_4
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WAVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 434
    :cond_5
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 436
    :cond_6
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 438
    :cond_7
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 440
    :cond_8
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 264
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 265
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public hideHiView()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mHiImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    return-void
.end method

.method public initHiViewLayout(II)V
    .locals 4
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I

    .prologue
    .line 398
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mHiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 399
    .local v0, "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 400
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 401
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mHiImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mHiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mHiImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 404
    return-void
.end method

.method public initViewsBitmap()V
    .locals 35

    .prologue
    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 200
    .local v3, "scaledBitmapWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 202
    .local v4, "scaledBitmapHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 204
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 205
    .local v33, "glassBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v33

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mGlassButton:Landroid/widget/ImageView;

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-virtual {v1, v2, v5, v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x1

    const/16 v5, 0x75

    const/4 v7, -0x1

    invoke-virtual {v1, v2, v5, v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 215
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 216
    .local v34, "pencilBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v34

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSketchButton:Landroid/widget/ImageView;

    move-object/from16 v0, v34

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 223
    .local v6, "starBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STARBURST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mStarButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 229
    .local v12, "waveBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WAVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    move v9, v3

    move v10, v4

    invoke-virtual/range {v7 .. v13}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mWaveButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 235
    .local v18, "opticalLensBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v19}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOpticalLensButton:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 242
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 243
    .local v32, "comicBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v32

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mComicButton:Landroid/widget/ImageView;

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 250
    .local v24, "pinFocusBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v19, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v25}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mPinFocusButton:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 256
    .local v30, "defocusBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v25, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v25 .. v31}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mDeFocusButton:Landroid/widget/ImageView;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mIsCanClick:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 134
    .local v7, "id":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->removeAllSecondEffects()V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateCancelOkButtonBg()V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->resetViewBg(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    packed-switch v7, :pswitch_data_0

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 180
    .local v2, "width":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 181
    .local v3, "height":I
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MagicEffects  mSourceBitmap:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",mSourceBitmap.recycled:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 142
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 147
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 152
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->STARBURST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    goto/16 :goto_1

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 156
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->WAVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    goto/16 :goto_1

    .line 159
    :pswitch_4
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 164
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 169
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 174
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x7f100934
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f0d00a4

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 361
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 362
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->getTouchRect(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 363
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 365
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mTouchDownX:F

    .line 366
    if-eqz v0, :cond_1

    .line 367
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->initHiViewLayout(II)V

    .line 369
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 376
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mTouchUpX:F

    .line 377
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->hideHiView()V

    .line 378
    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mTouchUpX:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mTouchDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mIsCanClick:Z

    if-eqz v3, :cond_3

    .line 379
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 382
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->onClick(Landroid/view/View;)V

    .line 386
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mOnTouchText:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLastOnClickText:Landroid/widget/TextView;

    goto :goto_0

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->resetTextColor()V

    .line 389
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public recycleBitmaps()V
    .locals 5

    .prologue
    .line 269
    const-string v3, "jiaxiaowei"

    const-string v4, "MagicEffects  recycleBitmaps"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 271
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 272
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 273
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public rotateBitmaps(I)V
    .locals 10
    .param p1, "rotateDegree"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 280
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mMatrix:Landroid/graphics/Matrix;

    .line 281
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 282
    .local v4, "view":Landroid/widget/ImageView;
    if-nez v4, :cond_1

    .line 292
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09019c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 284
    .local v2, "padding":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v2, v9

    sub-float v5, v6, v7

    .line 285
    .local v5, "width":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v2, v9

    sub-float v0, v6, v7

    .line 286
    .local v0, "height":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v7, p1

    div-float v8, v5, v9

    div-float v9, v0, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 287
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 288
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 289
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 290
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIsCanClick(Z)V
    .locals 0
    .param p1, "isCanClick"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mIsCanClick:Z

    .line 449
    return-void
.end method

.method public setSpecialEffectsActivity(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 192
    return-void
.end method
