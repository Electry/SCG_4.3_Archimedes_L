.class public Lcom/lenovo/scg/common/animation/LoadingAnimation;
.super Ljava/lang/Object;
.source "LoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingAnimation"


# instance fields
.field private final OVER:I

.field private mBigBg:Landroid/widget/LinearLayout;

.field private mBlueBigRect1:Landroid/widget/ImageView;

.field private mBlueBigRect10:Landroid/widget/ImageView;

.field private mBlueBigRect2:Landroid/widget/ImageView;

.field private mBlueBigRect3:Landroid/widget/ImageView;

.field private mBlueBigRect4:Landroid/widget/ImageView;

.field private mBlueBigRect5:Landroid/widget/ImageView;

.field private mBlueBigRect6:Landroid/widget/ImageView;

.field private mBlueBigRect7:Landroid/widget/ImageView;

.field private mBlueBigRect8:Landroid/widget/ImageView;

.field private mBlueBigRect9:Landroid/widget/ImageView;

.field private mBlueSmallRect1:Landroid/widget/ImageView;

.field private mBlueSmallRect2:Landroid/widget/ImageView;

.field private mBlueSmallRect3:Landroid/widget/ImageView;

.field private mBlueSmallRect4:Landroid/widget/ImageView;

.field private mBlueSmallRect5:Landroid/widget/ImageView;

.field private mContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mContext:Landroid/content/Context;

.field private mDot:Landroid/widget/ImageView;

.field private mDurtion:I

.field private mHint:Landroid/widget/TextView;

.field private mIndex:I

.field private mLaoding:Landroid/widget/RelativeLayout;

.field private mNumber:I

.field private mNumberTextView:Landroid/widget/TextView;

.field private mOnAnimationEndListener:Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;

.field private mParent:Landroid/view/ViewGroup;

.field private mSmallBg:Landroid/widget/LinearLayout;

.field private myAnimation_Translate1:Landroid/view/animation/Animation;

.field private myAnimation_Translate2:Landroid/view/animation/Animation;

.field private myAnimation_Translate3:Landroid/view/animation/Animation;

.field private myAnimation_Translate4:Landroid/view/animation/Animation;

.field private myAnimation_Translate5:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig1:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig10:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig2:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig3:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig4:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig5:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig6:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig7:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig8:Landroid/view/animation/Animation;

.field private myAnimation_TranslateBig9:Landroid/view/animation/Animation;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "number"    # I
    .param p4, "durtion"    # I

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mOnAnimationEndListener:Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;

    .line 81
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate1:Landroid/view/animation/Animation;

    .line 91
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate2:Landroid/view/animation/Animation;

    .line 101
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate3:Landroid/view/animation/Animation;

    .line 111
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate4:Landroid/view/animation/Animation;

    .line 121
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate5:Landroid/view/animation/Animation;

    .line 132
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig1:Landroid/view/animation/Animation;

    .line 142
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig2:Landroid/view/animation/Animation;

    .line 152
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig3:Landroid/view/animation/Animation;

    .line 162
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig4:Landroid/view/animation/Animation;

    .line 172
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig5:Landroid/view/animation/Animation;

    .line 182
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig6:Landroid/view/animation/Animation;

    .line 192
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig7:Landroid/view/animation/Animation;

    .line 202
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig8:Landroid/view/animation/Animation;

    .line 212
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig9:Landroid/view/animation/Animation;

    .line 222
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig10:Landroid/view/animation/Animation;

    .line 714
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->OVER:I

    .line 716
    new-instance v0, Lcom/lenovo/scg/common/animation/LoadingAnimation$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/animation/LoadingAnimation$1;-><init>(Lcom/lenovo/scg/common/animation/LoadingAnimation;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myHandler:Landroid/os/Handler;

    .line 242
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mContext:Landroid/content/Context;

    .line 243
    iput-object p2, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mParent:Landroid/view/ViewGroup;

    .line 244
    iput p3, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    .line 245
    iput p4, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04016d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    .line 249
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v9, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100879

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10088d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumberTextView:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10087a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mHint:Landroid/widget/TextView;

    .line 255
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10087b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDot:Landroid/widget/ImageView;

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10087c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mSmallBg:Landroid/widget/LinearLayout;

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100882

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBigBg:Landroid/widget/LinearLayout;

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10087d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect1:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10087e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect2:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10087f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect3:Landroid/widget/ImageView;

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100880

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect4:Landroid/widget/ImageView;

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100881

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect5:Landroid/widget/ImageView;

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100883

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect1:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100884

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect2:Landroid/widget/ImageView;

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100885

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect3:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100886

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect4:Landroid/widget/ImageView;

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100887

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect5:Landroid/widget/ImageView;

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100888

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect6:Landroid/widget/ImageView;

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f100889

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect7:Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10088a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect8:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10088b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect9:Landroid/widget/ImageView;

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    const v1, 0x7f10088c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect10:Landroid/widget/ImageView;

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate1:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate2:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate3:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate4:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate5:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig1:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig2:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig3:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig4:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig5:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig6:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig7:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig8:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig9:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig10:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDurtion:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 598
    return-void
.end method

.method private isChineseLanguage()Z
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public aniStop()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 685
    const-string v0, "LoadingAnimation"

    const-string v1, "aniStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBigBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mSmallBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect6:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect7:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect8:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect9:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueBigRect10:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBlueSmallRect5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mOnAnimationEndListener:Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mOnAnimationEndListener:Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;

    invoke-interface {v0}, Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;->OnAnimationEnd()V

    .line 712
    :cond_0
    return-void
.end method

.method public nextAni()V
    .locals 10

    .prologue
    .line 643
    iget v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    .line 646
    const/4 v4, 0x0

    .line 647
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 648
    .local v2, "ani":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    .line 650
    .local v5, "rect":Landroid/view/View;
    :try_start_0
    iget v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 651
    iget v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    iget v7, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    if-ge v6, v7, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "myAnimation_Translate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 653
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/animation/Animation;

    move-object v2, v0

    .line 655
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBlueSmallRect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 656
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 667
    :cond_1
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumberTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    iget v7, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    if-ge v6, v7, :cond_4

    .line 670
    iget-object v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 682
    :goto_1
    return-void

    .line 658
    :cond_2
    iget v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    .line 659
    iget v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    iget v7, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    if-ge v6, v7, :cond_3

    .line 660
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "myAnimation_TranslateBig"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 661
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/animation/Animation;

    move-object v2, v0

    .line 663
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBlueBigRect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    iget v9, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 664
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    goto/16 :goto_0

    .line 673
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 675
    :catch_0
    move-exception v3

    .line 676
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 677
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 678
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 679
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 680
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "LoadingAnimation"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    .line 239
    :cond_0
    return-void
.end method

.method public setAnimationEndListener(Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mOnAnimationEndListener:Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;

    .line 39
    return-void
.end method

.method public startAni(I)V
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 602
    const-string v1, "LoadingAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAni, orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 605
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 625
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mLaoding:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 628
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumberTextView:Landroid/widget/TextView;

    const-string v2, "0/10"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mBigBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 630
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig1:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 631
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_TranslateBig1:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 639
    :cond_0
    :goto_1
    iput v4, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mIndex:I

    .line 640
    return-void

    .line 608
    :sswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 609
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 610
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 611
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 615
    :sswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 616
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 617
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 618
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 632
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumber:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mNumberTextView:Landroid/widget/TextView;

    const-string v2, "0/5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mSmallBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate1:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 636
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/LoadingAnimation;->myAnimation_Translate1:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    goto :goto_1

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
