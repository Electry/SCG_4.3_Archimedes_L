.class public Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;
.super Ljava/lang/Object;
.source "AeAreaDebugAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;
    }
.end annotation


# static fields
.field private static final AREA_SIZE_MIN:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AeAreaDebugAssistant"

.field private static mAeAreaDebugAssistant:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

.field public static final mAeAreaDebugOpenDefValue:Z


# instance fields
.field private mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

.field private mAreaSize:I

.field private mAssistantRootView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mIsCreated:Z

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSizeRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeAreaDebugAssistant:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    .line 27
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAssistantRootView:Landroid/widget/RelativeLayout;

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSizeRate:F

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSizeRate:F

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSizeRate:F

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    return-object v0
.end method

.method private getAeRectDisplayer()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    .line 191
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getSeekBar() mContext is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;-><init>(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    goto :goto_0
.end method

.method private getAssistantRootView()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAssistantRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAssistantRootView:Landroid/widget/RelativeLayout;

    .line 142
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getAssistantRootView() mContext is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f10015a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAssistantRootView:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAssistantRootView:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeAreaDebugAssistant:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    return-object v0
.end method

.method private getMainLayout()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getMainLayout() mContext is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method private getSeekBar()Landroid/widget/SeekBar;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    .line 180
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getSeekBar() mContext is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$1;-><init>(Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "AeAreaDebugAssistant"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    if-nez v0, :cond_1

    .line 109
    const-string v0, "AeAreaDebugAssistant"

    const-string v1, "clear(): !mIsCreated && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->clear()V

    goto :goto_0
.end method

.method public creat(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 47
    const-string v3, "AeAreaDebugAssistant"

    const-string v4, "creat()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    .line 49
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "AeAreaDebugAssistant"

    const-string v4, "mIsCreated && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getAeRectDisplayer()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getAeRectDisplayer()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .local v0, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .local v1, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x41200000    # 10.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 63
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 64
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 66
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getAssistantRootView()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .local v2, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 69
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 70
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v0, "AeAreaDebugAssistant"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    if-nez v0, :cond_0

    .line 76
    const-string v0, "AeAreaDebugAssistant"

    const-string v1, "destroy(): !mIsCreated && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getAssistantRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 81
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAssistantRootView:Landroid/widget/RelativeLayout;

    .line 82
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mMainLayout:Landroid/widget/LinearLayout;

    .line 83
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSeekBar:Landroid/widget/SeekBar;

    .line 84
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    .line 85
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mContext:Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mSizeRate:F

    .line 88
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I

    goto :goto_0
.end method

.method public getAreaSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I

    return v0
.end method

.method public isAeAreaDebugtDisplay()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    return v0
.end method

.method public show(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 96
    const-string v0, "AeAreaDebugAssistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mIsCreated:Z

    if-nez v0, :cond_1

    .line 98
    const-string v0, "AeAreaDebugAssistant"

    const-string/jumbo v1, "show(): !mIsCreated && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAeRectDisplayer:Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;

    iget v1, p0, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->mAreaSize:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant$AeRectDisplayer;->show(III)V

    goto :goto_0
.end method
