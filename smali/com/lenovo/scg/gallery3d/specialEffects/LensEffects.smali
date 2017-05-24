.class public Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;
.super Ljava/lang/Object;
.source "LensEffects.java"

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

.field effect:Ljava/lang/String;

.field private mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

.field private mContext:Landroid/content/Context;

.field private mFishEyeButton:Landroid/widget/ImageView;

.field private mFishEyeText:Landroid/widget/TextView;

.field private mHiImageView:Landroid/widget/ImageView;

.field private mIsCanClick:Z

.field private mKaleidoscopeButton:Landroid/widget/ImageView;

.field private mKaleidoscopeText:Landroid/widget/TextView;

.field private mLastOnClickText:Landroid/widget/TextView;

.field private mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirrorImageButton:Landroid/widget/ImageView;

.field private mMirrorImageText:Landroid/widget/TextView;

.field private mOnTouchText:Landroid/widget/TextView;

.field private mOnTouchView:Landroid/widget/ImageView;

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mScaledNotCutBitmap:Landroid/graphics/Bitmap;

.field private mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mTouchDownX:F

.field private mTouchUpX:F

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mIsCanClick:Z

    .line 103
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mContext:Landroid/content/Context;

    move-object v3, p2

    .line 71
    check-cast v3, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    .line 72
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->setOnTouchViewListener(Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;)V

    .line 73
    check-cast p1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 74
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 75
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 76
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getNotCutScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    .line 77
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040184

    invoke-virtual {v0, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getLiveEffectManager()Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .line 83
    const v3, 0x7f10073e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 84
    .local v1, "parentView":Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 85
    const v3, 0x7f10092f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeButton:Landroid/widget/ImageView;

    .line 86
    const v3, 0x7f10092e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageButton:Landroid/widget/ImageView;

    .line 88
    const v3, 0x7f100930

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeButton:Landroid/widget/ImageView;

    .line 89
    const v3, 0x7f10092d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mHiImageView:Landroid/widget/ImageView;

    .line 91
    const v3, 0x7f100932

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeText:Landroid/widget/TextView;

    .line 92
    const v3, 0x7f100931

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageText:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f100933

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeText:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->initViewsBitmap()V

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    .line 97
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeButton:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageButton:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeButton:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method private getTouchRect(II)Landroid/graphics/Rect;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 225
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getScrollX()I

    move-result v1

    add-int/2addr p1, v1

    .line 227
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    .line 244
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 232
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 233
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 235
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextColor()V
    .locals 3

    .prologue
    const v2, 0x7f0d009d

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    return-void
.end method

.method private resetViewBg(Ljava/lang/String;)V
    .locals 2
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 310
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 316
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MIRROR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 318
    :cond_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public hideHiView()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mHiImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    return-void
.end method

.method public initHiViewLayout(II)V
    .locals 4
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I

    .prologue
    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mHiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    .local v0, "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 293
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mHiImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mHiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mHiImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 297
    return-void
.end method

.method public initViewsBitmap()V
    .locals 15

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->bitmaps:Ljava/util/ArrayList;

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 156
    .local v2, "scaledBitmapWidth":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 157
    .local v3, "scaledBitmapHeight":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 161
    .local v13, "kaleidoscopeBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v13}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 163
    invoke-static {v2, v3, v13}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->cutBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 164
    .local v14, "newBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mKaleidoscopeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 169
    .local v5, "mirrorBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MIRROR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMirrorImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 179
    .local v11, "fishEyeBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    move v8, v2

    move v9, v3

    invoke-virtual/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mFishEyeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 106
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 107
    :cond_0
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mIsCanClick:Z

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 109
    .local v7, "id":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->removeAllSecondEffects()V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateCancelOkButtonBg()V

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->resetViewBg(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    packed-switch v7, :pswitch_data_0

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 137
    .local v2, "width":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 138
    .local v3, "height":I
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LensEffects  mSourceBitmap:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",mSourceBitmap.recycled:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 140
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 117
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 118
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 124
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->MIRROR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    goto :goto_1

    .line 130
    :pswitch_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x7f10092e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f0d00a4

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 254
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 255
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->getTouchRect(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 256
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 258
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mTouchDownX:F

    .line 259
    if-eqz v0, :cond_1

    .line 260
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->initHiViewLayout(II)V

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mTouchUpX:F

    .line 270
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->hideHiView()V

    .line 271
    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mTouchUpX:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mTouchDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mIsCanClick:Z

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->onClick(Landroid/view/View;)V

    .line 279
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mOnTouchText:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLastOnClickText:Landroid/widget/TextView;

    goto :goto_0

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->resetTextColor()V

    .line 282
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 256
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
    .line 192
    const-string v3, "jiaxiaowei"

    const-string v4, "LensEffects  recycleBitmaps"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 194
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 195
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 196
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public rotateBitmaps(I)V
    .locals 10
    .param p1, "rotateDegree"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 203
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMatrix:Landroid/graphics/Matrix;

    .line 204
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 205
    .local v4, "view":Landroid/widget/ImageView;
    if-nez v4, :cond_1

    .line 215
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09019c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 207
    .local v2, "padding":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v2, v9

    sub-float v5, v6, v7

    .line 208
    .local v5, "width":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v2, v9

    sub-float v0, v6, v7

    .line 209
    .local v0, "height":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v7, p1

    div-float v8, v5, v9

    div-float v9, v0, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 210
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 211
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 212
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 213
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIsCanClick(Z)V
    .locals 0
    .param p1, "isCanClick"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mIsCanClick:Z

    .line 327
    return-void
.end method

.method public setSpecialEffectsActivity(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 147
    return-void
.end method
