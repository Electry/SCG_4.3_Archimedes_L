.class public Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;
.super Landroid/widget/FrameLayout;
.source "HDRModeUI.java"


# static fields
.field public static DEVELOP_SHOW_UI:Z = false

.field private static final TAG:Ljava/lang/String; = "HDRModeUI"


# instance fields
.field private mBrightnessSeekBar:Landroid/widget/SeekBar;

.field private mBrightnessTv:Landroid/widget/TextView;

.field private mConfirmButtion:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mHdrMode:Lcom/lenovo/scg/camera/mode/HDRMode;

.field private mMaxBrightness:I

.field private mMinBrightness:I

.field private mSaturationSeekBar:Landroid/widget/SeekBar;

.field private mSaturationTv:Landroid/widget/TextView;

.field private mToneSeekBar:Landroid/widget/SeekBar;

.field private mToneTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->DEVELOP_SHOW_UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/16 v0, -0x64

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mMinBrightness:I

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mMaxBrightness:I

    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mMinBrightness:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Lcom/lenovo/scg/camera/mode/HDRMode;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mHdrMode:Lcom/lenovo/scg/camera/mode/HDRMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private hideDevelopUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mConfirmButtion:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    return-void
.end method


# virtual methods
.method public initSeekBar(III)V
    .locals 3
    .param p1, "tone"    # I
    .param p2, "brightness"    # I
    .param p3, "saturation"    # I

    .prologue
    .line 126
    const-string v0, "HDRModeUI"

    const-string v1, "kbg374, initSeekBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mMaxBrightness:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saturation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "HDRModeUI"

    const-string v1, "kbg374, onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mConfirmButtion:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mConfirmButtion:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;-><init>(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f100140

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneTv:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f100142

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessTv:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationTv:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f10013f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$2;-><init>(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$3;-><init>(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$4;-><init>(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    sget-boolean v0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->DEVELOP_SHOW_UI:Z

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->hideDevelopUI()V

    .line 111
    :cond_0
    return-void
.end method

.method public setController(Lcom/lenovo/scg/camera/mode/HDRMode;)V
    .locals 0
    .param p1, "hdrMode"    # Lcom/lenovo/scg/camera/mode/HDRMode;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mHdrMode:Lcom/lenovo/scg/camera/mode/HDRMode;

    .line 142
    return-void
.end method
