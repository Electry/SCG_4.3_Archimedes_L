.class public Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
.super Ljava/lang/Object;
.source "WeiboLoginLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mIsScrolledToBegin:Z

.field private mIsShowWelcomeViews:Z

.field private mIsStopAnimation:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLoginListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;

.field private mLoginRemindViews:Landroid/widget/RelativeLayout;

.field private mLoginTipButton:Landroid/widget/TextView;

.field private mParentView:Landroid/view/ViewGroup;

.field private mPreAnimationValue:I

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private mRootView:Landroid/view/View;

.field private mSavedAnimationValue:I

.field private mScreenHeight:I

.field private mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

.field private mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

.field private mWelcomeViews:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mListener:Landroid/view/View$OnClickListener;

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    .line 64
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->initViews()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mPreAnimationValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mPreAnimationValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mSavedAnimationValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsScrolledToBegin:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsScrolledToBegin:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsStopAnimation:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginTipButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object p1
.end method

.method private initViews()V
    .locals 13

    .prologue
    const v12, 0x7f100649

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 153
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 154
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0401b9

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    .line 155
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x3

    invoke-virtual {v3, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09041b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 159
    .local v5, "nOffsetTop":I
    invoke-virtual {v3, v11, v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 162
    .local v4, "nCnt":I
    const/4 v6, 0x0

    .line 163
    .local v6, "nPos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 164
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 165
    .local v7, "vChild":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v1

    .line 166
    .local v1, "id":I
    if-ne v1, v12, :cond_1

    .line 167
    move v6, v0

    .line 171
    .end local v1    # "id":I
    .end local v7    # "vChild":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v8, v9, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    const v9, 0x7f100ab3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    .line 173
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    invoke-virtual {v8, v11}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 174
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    const v9, 0x7f100ab4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    .line 175
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScreenHeight:I

    .line 178
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    const v9, 0x7f100ab8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginRemindViews:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    const v9, 0x7f100abb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginTipButton:Landroid/widget/TextView;

    .line 180
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginTipButton:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 181
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginTipButton:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    const v9, 0x7f100abc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void

    .line 163
    .restart local v1    # "id":I
    .restart local v7    # "vChild":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 5
    .param p1, "toastMsg"    # Ljava/lang/String;

    .prologue
    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 260
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 261
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public continueAnimation()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "jiaxiaowei"

    const-string v1, "continueAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsStopAnimation:Z

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->stopAnimation()V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsShowWelcomeViews:Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public isShowWelcomeViews()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsShowWelcomeViews:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsShowWelcomeViews(Z)V
    .locals 0
    .param p1, "isShowWelcomeViews"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsShowWelcomeViews:Z

    .line 278
    return-void
.end method

.method public setLoginListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;)V
    .locals 0
    .param p1, "loginListener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;

    .line 274
    return-void
.end method

.method public setWeiboList(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0
    .param p1, "weiboList"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .line 254
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;->scrollTo(II)V

    .line 141
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginRemindViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->stopAnimation()V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->initViews()V

    .line 146
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V

    goto :goto_0
.end method

.method public showWelcomeLayout()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginRemindViews:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    return-void
.end method

.method public startAnimation(Z)V
    .locals 4
    .param p1, "isDelay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsStopAnimation:Z

    .line 69
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsScrolledToBegin:Z

    .line 70
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mPreAnimationValue:I

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScreenHeight:I

    mul-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsStopAnimation:Z

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mSavedAnimationValue:I

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 126
    :cond_0
    return-void
.end method

.method public stopAnimation(Z)V
    .locals 3
    .param p1, "saveCurrentAnimation"    # Z

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsStopAnimation:Z

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScreenHeight:I

    mul-int/lit8 v1, v1, 0x2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mSavedAnimationValue:I

    .line 106
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrollView.getScrollY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mScrollView:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 110
    :cond_1
    return-void
.end method
