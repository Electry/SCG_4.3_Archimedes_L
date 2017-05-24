.class public Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;
.super Ljava/lang/Object;
.source "ColorEffects.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


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

.field private mAntiButton:Landroid/widget/ImageView;

.field private mAntiText:Landroid/widget/TextView;

.field private mBackLightButton:Landroid/widget/ImageView;

.field private mBackLightText:Landroid/widget/TextView;

.field private mBakeButton:Landroid/widget/ImageView;

.field private mBakeText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHiImageView:Landroid/widget/ImageView;

.field private mHighContrastButton:Landroid/widget/ImageView;

.field private mHighContrastText:Landroid/widget/TextView;

.field private mInfraredButton:Landroid/widget/ImageView;

.field private mInfraredText:Landroid/widget/TextView;

.field private mIsCanClick:Z

.field private mLastOnClickText:Landroid/widget/TextView;

.field private mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

.field private mLomoButton:Landroid/widget/ImageView;

.field private mLomoText:Landroid/widget/TextView;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMonochromeButton:Landroid/widget/ImageView;

.field private mMonochromeText:Landroid/widget/TextView;

.field private mNatureButton:Landroid/widget/ImageView;

.field private mNatureText:Landroid/widget/TextView;

.field private mOnTouchText:Landroid/widget/TextView;

.field private mOnTouchView:Landroid/widget/ImageView;

.field private mPopButton:Landroid/widget/ImageView;

.field private mPopText:Landroid/widget/TextView;

.field private mPosterButton:Landroid/widget/ImageView;

.field private mPosterText:Landroid/widget/TextView;

.field private mRuralButton:Landroid/widget/ImageView;

.field private mRuralText:Landroid/widget/TextView;

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

.field private mSelectColorButton:Landroid/widget/ImageView;

.field private mSelectColorText:Landroid/widget/TextView;

.field private mSepianButton:Landroid/widget/ImageView;

.field private mSepianText:Landroid/widget/TextView;

.field private mSolarizeButton:Landroid/widget/ImageView;

.field private mSolarizeText:Landroid/widget/TextView;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

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

.field private mVividButton:Landroid/widget/ImageView;

.field private mVividText:Landroid/widget/TextView;

.field private mWaterColorButton:Landroid/widget/ImageView;

.field private mWaterColorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mIsCanClick:Z

    .line 187
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mContext:Landroid/content/Context;

    .line 118
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMatrix:Landroid/graphics/Matrix;

    move-object v3, p2

    .line 119
    check-cast v3, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->setOnTouchViewListener(Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;)V

    .line 121
    check-cast p1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 122
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 123
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 124
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040183

    invoke-virtual {v0, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getLiveEffectManager()Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .line 130
    const v3, 0x7f10073e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 131
    .local v1, "parentView":Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 132
    const v3, 0x7f10090d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoButton:Landroid/widget/ImageView;

    .line 133
    const v3, 0x7f10090e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralButton:Landroid/widget/ImageView;

    .line 134
    const v3, 0x7f100913

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterButton:Landroid/widget/ImageView;

    .line 135
    const v3, 0x7f100912

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopButton:Landroid/widget/ImageView;

    .line 136
    const v3, 0x7f100915

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeButton:Landroid/widget/ImageView;

    .line 137
    const v3, 0x7f100919

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredButton:Landroid/widget/ImageView;

    .line 138
    const v3, 0x7f100911

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastButton:Landroid/widget/ImageView;

    .line 139
    const v3, 0x7f10091b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiButton:Landroid/widget/ImageView;

    .line 140
    const v3, 0x7f100918

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividButton:Landroid/widget/ImageView;

    .line 141
    const v3, 0x7f10091a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorButton:Landroid/widget/ImageView;

    .line 142
    const v3, 0x7f100917

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightButton:Landroid/widget/ImageView;

    .line 143
    const v3, 0x7f100910

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianButton:Landroid/widget/ImageView;

    .line 144
    const v3, 0x7f100916

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    .line 145
    const v3, 0x7f10090f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeButton:Landroid/widget/ImageView;

    .line 146
    const v3, 0x7f100914

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorButton:Landroid/widget/ImageView;

    .line 147
    const v3, 0x7f10091c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeButton:Landroid/widget/ImageView;

    .line 148
    const v3, 0x7f10092d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHiImageView:Landroid/widget/ImageView;

    .line 150
    const v3, 0x7f10091d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoText:Landroid/widget/TextView;

    .line 151
    const v3, 0x7f10091e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralText:Landroid/widget/TextView;

    .line 152
    const v3, 0x7f100923

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterText:Landroid/widget/TextView;

    .line 153
    const v3, 0x7f100922

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopText:Landroid/widget/TextView;

    .line 154
    const v3, 0x7f100925

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeText:Landroid/widget/TextView;

    .line 155
    const v3, 0x7f100929

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredText:Landroid/widget/TextView;

    .line 156
    const v3, 0x7f100921

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastText:Landroid/widget/TextView;

    .line 157
    const v3, 0x7f10092b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiText:Landroid/widget/TextView;

    .line 158
    const v3, 0x7f100928

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividText:Landroid/widget/TextView;

    .line 159
    const v3, 0x7f10092a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorText:Landroid/widget/TextView;

    .line 160
    const v3, 0x7f100927

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightText:Landroid/widget/TextView;

    .line 161
    const v3, 0x7f100920

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianText:Landroid/widget/TextView;

    .line 162
    const v3, 0x7f100926

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureText:Landroid/widget/TextView;

    .line 163
    const v3, 0x7f10091f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeText:Landroid/widget/TextView;

    .line 164
    const v3, 0x7f100924

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorText:Landroid/widget/TextView;

    .line 165
    const v3, 0x7f10092c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeText:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->initViewsBitmap()V

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    .line 169
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method private getTouchRect(II)Landroid/graphics/Rect;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 463
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 464
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 465
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getScrollX()I

    move-result v1

    add-int/2addr p1, v1

    .line 466
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 468
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    .line 561
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 471
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 472
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 474
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 478
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 484
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 486
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 490
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 492
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 496
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 497
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 498
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 501
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 502
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 503
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 504
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto :goto_0

    .line 507
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 508
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 509
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 510
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 513
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 514
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 515
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 516
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 519
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 520
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 521
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 522
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 525
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 526
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 527
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 528
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 531
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 532
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 533
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 534
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 537
    :cond_b
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 538
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 539
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 540
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 543
    :cond_c
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 544
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 545
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 546
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 549
    :cond_d
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 550
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 551
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 552
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 555
    :cond_e
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 556
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 557
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    .line 558
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 561
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private resetTextColor()V
    .locals 3

    .prologue
    const v2, 0x7f0d009d

    .line 621
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    return-void
.end method

.method private resetViewBg(Ljava/lang/String;)V
    .locals 2
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 640
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 646
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COUNTRY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 648
    :cond_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 650
    :cond_4
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POPART:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 651
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 652
    :cond_5
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 653
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 654
    :cond_6
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->INFRARED:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 655
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 656
    :cond_7
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->HIGHCONTRAST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 658
    :cond_8
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 659
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 660
    :cond_9
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 662
    :cond_a
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->THERMO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 664
    :cond_b
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 666
    :cond_c
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SEPIAN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 668
    :cond_d
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 670
    :cond_e
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 671
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 672
    :cond_f
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 674
    :cond_10
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 426
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 427
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public hideHiView()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHiImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    return-void
.end method

.method public initHiViewLayout(II)V
    .locals 4
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I

    .prologue
    .line 608
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 609
    .local v0, "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 610
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 611
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHiImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHiImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHiImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 614
    return-void
.end method

.method public initViewsBitmap()V
    .locals 78

    .prologue
    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 304
    .local v3, "scaledBitmapWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 305
    .local v4, "scaledBitmapHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 307
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v75

    .line 308
    .local v75, "lomoBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v75

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLomoButton:Landroid/widget/ImageView;

    move-object/from16 v0, v75

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v75

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 315
    .local v6, "ruralBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COUNTRY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mRuralButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 322
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v77

    .line 323
    .local v77, "posterBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v77

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPosterButton:Landroid/widget/ImageView;

    move-object/from16 v0, v77

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v77

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 330
    .local v12, "popBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POPART:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    move v9, v3

    move v10, v4

    invoke-virtual/range {v7 .. v13}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mPopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 337
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v76

    .line 338
    .local v76, "monochromeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v76

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMonochromeButton:Landroid/widget/ImageView;

    move-object/from16 v0, v76

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v76

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 345
    .local v18, "infraredBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->INFRARED:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v19}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mInfraredButton:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 351
    .local v24, "highContrastBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v19, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->HIGHCONTRAST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v25}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mHighContrastButton:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    invoke-virtual {v1, v2, v5, v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 358
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v74

    .line 359
    .local v74, "antiBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v74

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mAntiButton:Landroid/widget/ImageView;

    move-object/from16 v0, v74

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v74

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 366
    .local v30, "vividBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v25, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v25 .. v31}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mVividButton:Landroid/widget/ImageView;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 372
    .local v36, "waterColorBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v31, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->THERMO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    const/16 v37, 0x0

    move/from16 v33, v3

    move/from16 v34, v4

    invoke-virtual/range {v31 .. v37}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mWaterColorButton:Landroid/widget/ImageView;

    move-object/from16 v0, v36

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v42

    .line 378
    .local v42, "backLightBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v37, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v41, v0

    const/16 v43, 0x0

    move/from16 v39, v3

    move/from16 v40, v4

    invoke-virtual/range {v37 .. v43}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBackLightButton:Landroid/widget/ImageView;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v48

    .line 384
    .local v48, "sepianBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v43, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SEPIAN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    const/16 v49, 0x0

    move/from16 v45, v3

    move/from16 v46, v4

    invoke-virtual/range {v43 .. v49}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSepianButton:Landroid/widget/ImageView;

    move-object/from16 v0, v48

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v48

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v54

    .line 394
    .local v54, "natureBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v49, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v53, v0

    const/16 v55, 0x0

    move/from16 v51, v3

    move/from16 v52, v4

    invoke-virtual/range {v49 .. v55}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    move-object/from16 v0, v54

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v54

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v60

    .line 405
    .local v60, "bakeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v55, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v59, v0

    const/16 v61, 0x0

    move/from16 v57, v3

    move/from16 v58, v4

    invoke-virtual/range {v55 .. v61}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mBakeButton:Landroid/widget/ImageView;

    move-object/from16 v0, v60

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v60

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v66

    .line 411
    .local v66, "selectColorBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v61, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v65, v0

    const/16 v67, 0x0

    move/from16 v63, v3

    move/from16 v64, v4

    invoke-virtual/range {v61 .. v67}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSelectColorButton:Landroid/widget/ImageView;

    move-object/from16 v0, v66

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v72

    .line 417
    .local v72, "solarizeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object/from16 v67, v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mScaledBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v71, v0

    const/16 v73, 0x0

    move/from16 v69, v3

    move/from16 v70, v4

    invoke-virtual/range {v67 .. v73}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSolarizeButton:Landroid/widget/ImageView;

    move-object/from16 v0, v72

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, v72

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mIsCanClick:Z

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 193
    .local v7, "id":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->removeAllSecondEffects()V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateCancelOkButtonBg()V

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->resetViewBg(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 198
    .local v2, "width":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 200
    .local v3, "height":I
    packed-switch v7, :pswitch_data_0

    .line 288
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 289
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 202
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 203
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 208
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COUNTRY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    goto :goto_1

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 212
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 217
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POPART:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    goto :goto_1

    .line 220
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 221
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 226
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->INFRARED:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    goto/16 :goto_1

    .line 229
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 230
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->HIGHCONTRAST:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 234
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->addSecondSpecialEffectsViews(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :pswitch_8
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :pswitch_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 243
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->THERMO:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    goto/16 :goto_1

    .line 246
    :pswitch_a
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 247
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :pswitch_b
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 252
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SEPIAN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    goto/16 :goto_1

    .line 255
    :pswitch_c
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 256
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NATURE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0, v6, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 259
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 260
    .local v8, "natureBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v8}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    .line 263
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorEffects natureButton left:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",right:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mNatureButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    .end local v8    # "natureBitmap":Landroid/graphics/Bitmap;
    :pswitch_d
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 267
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_e
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->hideDragView()V

    .line 272
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0, v6, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 276
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 277
    .local v9, "selectColorBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 282
    .end local v9    # "selectColorBitmap":Landroid/graphics/Bitmap;
    :pswitch_f
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 283
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setCurrentEffectName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x7f10090d
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_b
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_4
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f0d00a4

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 571
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 572
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->getTouchRect(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 573
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 605
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 575
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mTouchDownX:F

    .line 576
    if-eqz v0, :cond_1

    .line 577
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->initHiViewLayout(II)V

    .line 579
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 586
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mTouchUpX:F

    .line 587
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->hideHiView()V

    .line 588
    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mTouchUpX:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mTouchDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mIsCanClick:Z

    if-eqz v3, :cond_3

    .line 589
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 590
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->onClick(Landroid/view/View;)V

    .line 596
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mOnTouchText:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLastOnClickText:Landroid/widget/TextView;

    goto :goto_0

    .line 598
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->resetTextColor()V

    .line 599
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 573
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
    .line 431
    const-string v3, "jiaxiaowei"

    const-string v4, "ColorEffects  recycleBitmaps"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 433
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 434
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 435
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public rotateBitmaps(I)V
    .locals 10
    .param p1, "rotateDegree"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 442
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMatrix:Landroid/graphics/Matrix;

    .line 443
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 444
    .local v4, "view":Landroid/widget/ImageView;
    if-nez v4, :cond_1

    .line 454
    :cond_0
    return-void

    .line 445
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09019c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 446
    .local v2, "padding":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v2, v9

    sub-float v5, v6, v7

    .line 447
    .local v5, "width":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v2, v9

    sub-float v0, v6, v7

    .line 448
    .local v0, "height":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v7, p1

    div-float v8, v5, v9

    div-float v9, v0, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 449
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 450
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 451
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 452
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIsCanClick(Z)V
    .locals 0
    .param p1, "isCanClick"    # Z

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mIsCanClick:Z

    .line 683
    return-void
.end method

.method public setSpecialEffectsActivity(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 296
    return-void
.end method
