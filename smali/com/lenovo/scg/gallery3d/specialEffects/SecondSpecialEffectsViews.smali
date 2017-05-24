.class public Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
.super Ljava/lang/Object;
.source "SecondSpecialEffectsViews.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

.field private mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mChildEffectNames:[I

.field private mCurrentEffectViewIndex:I

.field private mEffect:Ljava/lang/String;

.field private mEffect1Text:Landroid/widget/TextView;

.field private mEffect1View:Landroid/widget/ImageView;

.field private mEffect1Views:Landroid/widget/RelativeLayout;

.field private mEffect2Text:Landroid/widget/TextView;

.field private mEffect2View:Landroid/widget/ImageView;

.field private mEffect2Views:Landroid/widget/RelativeLayout;

.field private mEffect3Text:Landroid/widget/TextView;

.field private mEffect3View:Landroid/widget/ImageView;

.field private mEffect3Views:Landroid/widget/RelativeLayout;

.field private mEffect4Text:Landroid/widget/TextView;

.field private mEffect4View:Landroid/widget/ImageView;

.field private mEffect4Views:Landroid/widget/RelativeLayout;

.field private mEffect5Text:Landroid/widget/TextView;

.field private mEffect5View:Landroid/widget/ImageView;

.field private mEffect5Views:Landroid/widget/RelativeLayout;

.field private mEffect6Text:Landroid/widget/TextView;

.field private mEffect6View:Landroid/widget/ImageView;

.field private mEffect6Views:Landroid/widget/RelativeLayout;

.field private mEffectHiView:Landroid/widget/ImageView;

.field private mIsCanClick:Z

.field private mIsSetValue:Z

.field private mLastOnClickText:Landroid/widget/TextView;

.field private mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

.field private mOnTouchTextView:Landroid/widget/TextView;

.field private mOnTouchView:Landroid/widget/ImageView;

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mSecondEffectsScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "scaledBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "liveEffectManager"    # Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    .line 81
    const/4 v2, 0x6

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    .line 87
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 699
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsCanClick:Z

    move-object v2, p1

    .line 90
    check-cast v2, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 91
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 93
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 95
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040188

    invoke-virtual {v0, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10095e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSecondEffectsScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSecondEffectsScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->setOnTouchViewListener(Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;)V

    .line 102
    const v2, 0x7f100960

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Views:Landroid/widget/RelativeLayout;

    .line 103
    const v2, 0x7f100963

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Views:Landroid/widget/RelativeLayout;

    .line 104
    const v2, 0x7f100966

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Views:Landroid/widget/RelativeLayout;

    .line 105
    const v2, 0x7f100969

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Views:Landroid/widget/RelativeLayout;

    .line 106
    const v2, 0x7f10096c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Views:Landroid/widget/RelativeLayout;

    .line 107
    const v2, 0x7f10096f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    .line 108
    const v2, 0x7f100961

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    .line 109
    const v2, 0x7f100964

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    .line 110
    const v2, 0x7f100967

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    .line 111
    const v2, 0x7f10096a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    .line 112
    const v2, 0x7f10096d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    .line 113
    const v2, 0x7f100970

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    .line 114
    const v2, 0x7f100972

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffectHiView:Landroid/widget/ImageView;

    .line 116
    const v2, 0x7f100962

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f100965

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    .line 118
    const v2, 0x7f100968

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f10096b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f10096e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f100971

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Text:Landroid/widget/TextView;

    .line 123
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v3, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v3, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    .line 136
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-nez v2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->initViews()V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->initTextViews()V

    .line 142
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->initEffectViews()V

    goto :goto_0
.end method

.method private getTouchViewRect(II)Landroid/graphics/Rect;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 584
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSecondEffectsScrollView:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getScrollX()I

    move-result v1

    add-int/2addr p1, v1

    .line 585
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 586
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 587
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    .line 589
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    .line 622
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 592
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 593
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    .line 595
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 599
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    .line 601
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 604
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 605
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 606
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    .line 607
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 610
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    .line 613
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 616
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 617
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 618
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    .line 619
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 622
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initEffectNames()[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 410
    .local v0, "effectNames":[I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 472
    .end local v0    # "effectNames":[I
    :cond_1
    :goto_0
    return-object v0

    .line 414
    .restart local v0    # "effectNames":[I
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    aput v3, v0, v3

    .line 416
    aput v4, v0, v4

    .line 417
    aput v5, v0, v5

    .line 418
    aput v6, v0, v6

    .line 419
    aput v7, v0, v7

    .line 420
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 422
    aput v3, v0, v3

    .line 423
    aput v4, v0, v4

    .line 424
    aput v5, v0, v5

    .line 425
    aput v6, v0, v6

    .line 426
    aput v7, v0, v7

    .line 427
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    aput v3, v0, v3

    .line 430
    aput v4, v0, v4

    .line 431
    aput v5, v0, v5

    .line 432
    aput v6, v0, v6

    .line 433
    aput v7, v0, v7

    .line 434
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    .line 435
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    aput v3, v0, v3

    .line 437
    aput v4, v0, v4

    .line 438
    aput v5, v0, v5

    .line 439
    aput v6, v0, v6

    .line 440
    aput v7, v0, v7

    .line 441
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    .line 442
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 443
    aput v3, v0, v3

    .line 444
    aput v4, v0, v4

    .line 445
    aput v5, v0, v5

    .line 446
    aput v6, v0, v6

    .line 447
    aput v7, v0, v7

    .line 448
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto/16 :goto_0

    .line 449
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 450
    aput v3, v0, v3

    .line 451
    aput v4, v0, v4

    .line 452
    aput v5, v0, v5

    .line 453
    aput v6, v0, v6

    .line 454
    aput v7, v0, v7

    .line 455
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto/16 :goto_0

    .line 456
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 457
    aput v3, v0, v3

    .line 458
    aput v4, v0, v4

    .line 459
    aput v5, v0, v5

    .line 460
    aput v6, v0, v6

    .line 461
    aput v7, v0, v7

    .line 462
    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    goto/16 :goto_0

    .line 463
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    aput v3, v0, v3

    .line 465
    aput v4, v0, v4

    .line 466
    aput v5, v0, v5

    .line 467
    aput v6, v0, v6

    .line 468
    const/4 v1, -0x1

    aput v1, v0, v7

    .line 469
    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    goto/16 :goto_0
.end method

.method private initEffectViews()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/16 v13, 0x75

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 324
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->initEffectNames()[I

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    .line 325
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 326
    .local v7, "scaleBitmapWidth":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 329
    .local v6, "scaleBitmapHeight":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v9, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 330
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v12, v11, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 331
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 333
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v11, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 337
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 339
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v14, v11, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 343
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    .local v2, "bitmap3":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 345
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v11, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 349
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 350
    .local v3, "bitmap4":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 351
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 406
    .end local v0    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "bitmap3":Landroid/graphics/Bitmap;
    .end local v3    # "bitmap4":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v9, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 356
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v12, v12, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 358
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v13, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 359
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    .restart local v0    # "bitmap1":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 361
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v12, v11, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 366
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v13, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 367
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    .restart local v1    # "bitmap2":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 369
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v12, v14, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 374
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v13, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 375
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 376
    .restart local v2    # "bitmap3":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 377
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v12, v9, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 382
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v13, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 383
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 384
    .restart local v3    # "bitmap4":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 385
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v9, 0x4

    invoke-virtual {v8, v12, v9, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 390
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v13, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 391
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 392
    .local v4, "bitmap5":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 393
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v9, 0x5

    invoke-virtual {v8, v12, v9, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 398
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8, v11, v13, v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 399
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 400
    .local v5, "bitmap6":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 401
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    goto/16 :goto_0
.end method

.method private initTextViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f082a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f082b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f082c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f082d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f082e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 538
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f082f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0830

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0831

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0832

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0833

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0834

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0835

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0836

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0837

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0838

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0839

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f083a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f083b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f083c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f083d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f083e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f083f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0840

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0841

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0842

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 515
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0843

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0844

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0845

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0846

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0847

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 522
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0848

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0849

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f084a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f084b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f084c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f084d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 529
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f084e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f084f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0850

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0851

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Views:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private resetTextColor()V
    .locals 3

    .prologue
    const v2, 0x7f0d009d

    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    return-void
.end method

.method private resetViewBg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 684
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    if-nez v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 688
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 689
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 690
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 692
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 693
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 694
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public hideHiView()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffectHiView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    return-void
.end method

.method public initHiViewLayout(II)V
    .locals 4
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I

    .prologue
    .line 571
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffectHiView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 572
    .local v0, "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 573
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 574
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffectHiView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffectHiView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffectHiView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 577
    return-void
.end method

.method public initViews()V
    .locals 13

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->initEffectNames()[I

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    .line 235
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 236
    .local v9, "scaleBitmapWidth":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 238
    .local v8, "scaleBitmapHeight":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 239
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 240
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 242
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 244
    .local v7, "mScaledWidth":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 245
    .local v6, "mScaledHeight":I
    invoke-static {v7, v6, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->cutBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .end local v6    # "mScaledHeight":I
    .end local v7    # "mScaledWidth":I
    :cond_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v0    # "bitmap1":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    .line 254
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 255
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 257
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 258
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 259
    .restart local v7    # "mScaledWidth":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 260
    .restart local v6    # "mScaledHeight":I
    invoke-static {v7, v6, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->cutBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 262
    .end local v6    # "mScaledHeight":I
    .end local v7    # "mScaledWidth":I
    :cond_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 269
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 270
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 271
    .local v2, "bitmap3":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 272
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 273
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 274
    .restart local v7    # "mScaledWidth":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 275
    .restart local v6    # "mScaledHeight":I
    invoke-static {v7, v6, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->cutBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 277
    .end local v6    # "mScaledHeight":I
    .end local v7    # "mScaledWidth":I
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v2    # "bitmap3":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 283
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 284
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 285
    .local v3, "bitmap4":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 286
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 287
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 288
    .restart local v7    # "mScaledWidth":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 289
    .restart local v6    # "mScaledHeight":I
    invoke-static {v7, v6, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->cutBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 291
    .end local v6    # "mScaledHeight":I
    .end local v7    # "mScaledWidth":I
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v3    # "bitmap4":Landroid/graphics/Bitmap;
    :goto_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 297
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 298
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 299
    .local v4, "bitmap5":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 300
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 301
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 302
    .restart local v7    # "mScaledWidth":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 303
    .restart local v6    # "mScaledHeight":I
    invoke-static {v7, v6, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->cutBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 305
    .end local v6    # "mScaledHeight":I
    .end local v7    # "mScaledWidth":I
    :cond_4
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v4    # "bitmap5":Landroid/graphics/Bitmap;
    :goto_4
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    .line 311
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 312
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 313
    .local v5, "bitmap6":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 314
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v5    # "bitmap6":Landroid/graphics/Bitmap;
    :goto_5
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 321
    return-void

    .line 250
    :cond_5
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 265
    :cond_6
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 280
    :cond_7
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 294
    :cond_8
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 308
    :cond_9
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 317
    :cond_a
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x75

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 151
    if-nez p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsCanClick:Z

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 155
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->resetViewBg()V

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect1View:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 158
    iput v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 159
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2, v6, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 226
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 162
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v7

    invoke-virtual {v1, v7, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, v6, v8, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto :goto_1

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto :goto_1

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect2View:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 170
    iput v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 171
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-eqz v1, :cond_6

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2, v6, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto :goto_1

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v6

    invoke-virtual {v1, v7, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, v6, v8, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto/16 :goto_1

    .line 181
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect3View:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_a

    .line 182
    iput v9, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 183
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-eqz v1, :cond_9

    .line 184
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v9

    invoke-virtual {v1, v2, v6, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1

    .line 186
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v9

    invoke-virtual {v1, v7, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, v6, v8, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1

    .line 191
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    aget v2, v2, v9

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto/16 :goto_1

    .line 193
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect4View:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_d

    .line 194
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 195
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-eqz v1, :cond_c

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2, v6, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1

    .line 198
    :cond_b
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v7, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, v6, v8, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1

    .line 203
    :cond_c
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto/16 :goto_1

    .line 205
    :cond_d
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect5View:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_f

    .line 206
    const/4 v1, 0x4

    iput v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 207
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-nez v1, :cond_e

    .line 208
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto/16 :goto_1

    .line 210
    :cond_e
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v7, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, v6, v8, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1

    .line 215
    :cond_f
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect6View:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 216
    const/4 v1, 0x5

    iput v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mCurrentEffectViewIndex:I

    .line 217
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsSetValue:Z

    if-nez v1, :cond_10

    .line 218
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto/16 :goto_1

    .line 220
    :cond_10
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mChildEffectNames:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v7, v2, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 222
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, v6, v8, v5}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f0d00a4

    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 638
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 639
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->getTouchViewRect(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 640
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 672
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 642
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mTouchDownX:F

    .line 643
    if-eqz v0, :cond_0

    .line 644
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->initHiViewLayout(II)V

    .line 645
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 653
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mTouchUpX:F

    .line 654
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->hideHiView()V

    .line 655
    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mTouchUpX:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mTouchDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsCanClick:Z

    if-eqz v3, :cond_2

    .line 656
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 657
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 659
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 662
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->onClick(Landroid/view/View;)V

    .line 663
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mOnTouchTextView:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    goto :goto_0

    .line 665
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->resetTextColor()V

    .line 666
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mLastOnClickText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public recycleBitmaps()V
    .locals 4

    .prologue
    .line 545
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 546
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 547
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 548
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 549
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public rotateBitmaps(I)V
    .locals 10
    .param p1, "rotateDegree"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 556
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 557
    .local v2, "mMatrix":Landroid/graphics/Matrix;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 558
    .local v5, "view":Landroid/widget/ImageView;
    if-nez v5, :cond_1

    .line 568
    :cond_0
    return-void

    .line 559
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09019c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 560
    .local v3, "padding":F
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v3, v9

    sub-float v6, v7, v8

    .line 561
    .local v6, "width":F
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v3, v9

    sub-float v0, v7, v8

    .line 562
    .local v0, "height":F
    int-to-float v7, p1

    div-float v8, v6, v9

    div-float v9, v0, v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 563
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 564
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 565
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 566
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIsCanClick(Z)V
    .locals 0
    .param p1, "isCanClick"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->mIsCanClick:Z

    .line 704
    return-void
.end method
