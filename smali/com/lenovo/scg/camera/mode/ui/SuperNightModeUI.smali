.class public Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;
.super Landroid/widget/FrameLayout;
.source "SuperNightModeUI.java"


# static fields
.field public static DEVELOP_SHOW_UI:Z = false

.field private static final PREVIEW_BRIGHTNESS:Ljava/lang/String; = "\u9884\u89c8\u4eae\u5ea6:"

.field private static final PREVIEW_DENOISE:Ljava/lang/String; = "\u9884\u89c8\u53bb\u566a\u7a0b\u5ea6:"

.field private static final PREVIEW_ISO:Ljava/lang/String; = "ISO:"

.field private static final TAG:Ljava/lang/String; = "SuperNightModeUI"

.field private static final TAKE_PIC_BRIGHTNESS:Ljava/lang/String; = "\u62cd\u7167\u4eae\u5ea6:"

.field private static final TAKE_PIC_CONTRAST:Ljava/lang/String; = "\u62cd\u7167\u5bf9\u6bd4\u5ea6:"

.field private static final TAKE_PIC_DENOISE:Ljava/lang/String; = "\u62cd\u7167\u53bb\u566a\u7a0b\u5ea6:"

.field private static final TAKE_PIC_EV:Ljava/lang/String; = "\u62cd\u7167\u66dd\u5149\u5ea6:"

.field private static final TAKE_PIC_NUM:Ljava/lang/String; = "\u62cd\u7167\u5f20\u6570:"

.field private static final TAKE_PIC_SATURATION:Ljava/lang/String; = "\u62cd\u7167\u9971\u548c\u5ea6:"

.field private static final TAKE_PIC_SHARPNESS:Ljava/lang/String; = "\u62cd\u7167\u9510\u5ea6:"


# instance fields
.field private CONTRAST_VALUES:[I

.field private EV_VALUES:[I

.field private ISO_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SATURATION_VALUES:[I

.field private SHARPNESS_VALUES:[I

.field private mConfirmButtion:Landroid/widget/Button;

.field private mController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

.field private mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

.field private mPreviewBrightnessTv:Landroid/widget/TextView;

.field private mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

.field private mPreviewDeNoiseTv:Landroid/widget/TextView;

.field private mPreviewISOSeekBar:Landroid/widget/SeekBar;

.field private mPreviewISOTv:Landroid/widget/TextView;

.field private mSuperNightMode:Lcom/lenovo/scg/camera/mode/NightMode;

.field private mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

.field private mTakePicBrightnessTv:Landroid/widget/TextView;

.field private mTakePicContrastSeekBar:Landroid/widget/SeekBar;

.field private mTakePicContrastTv:Landroid/widget/TextView;

.field private mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

.field private mTakePicDeNoiseTv:Landroid/widget/TextView;

.field private mTakePicEvSeekBar:Landroid/widget/SeekBar;

.field private mTakePicEvTv:Landroid/widget/TextView;

.field private mTakePicNumSeekBar:Landroid/widget/SeekBar;

.field private mTakePicNumTv:Landroid/widget/TextView;

.field private mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

.field private mTakePicSaturationTv:Landroid/widget/TextView;

.field private mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

.field private mTakePicSharpnessTv:Landroid/widget/TextView;

.field seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->DEVELOP_SHOW_UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;-><init>(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->EV_VALUES:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->ISO_VALUES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Lcom/lenovo/scg/camera/mode/NightMode;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mSuperNightMode:Lcom/lenovo/scg/camera/mode/NightMode;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SHARPNESS_VALUES:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SATURATION_VALUES:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->CONTRAST_VALUES:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private createValues(III)[I
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "step"    # I

    .prologue
    .line 142
    sub-int v4, p2, p1

    div-int/2addr v4, p3

    add-int/lit8 v1, v4, 0x1

    .line 143
    .local v1, "count":I
    new-array v0, v1, [I

    .line 144
    .local v0, "array":[I
    move v2, p1

    .line 146
    .local v2, "cur":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 147
    aput v2, v0, v3

    .line 148
    add-int/2addr v2, p3

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v0
.end method

.method private getIndex([II)I
    .locals 2
    .param p1, "array"    # [I
    .param p2, "value"    # I

    .prologue
    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 351
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 356
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 350
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private hideDevelopUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mConfirmButtion:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    return-void
.end method

.method private initValues()V
    .locals 5

    .prologue
    .line 155
    new-instance v1, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    check-cast v2, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 156
    .local v1, "qParam":Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->getSupportISOValue()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->ISO_VALUES:Ljava/util/List;

    .line 158
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 160
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_CONTRAST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_CONTRAST:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_CONTRAST_STEP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->createValues(III)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->CONTRAST_VALUES:[I

    .line 164
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->createValues(III)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->EV_VALUES:[I

    .line 169
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_SHARPNESS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SHARPNESS_STEP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->createValues(III)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SHARPNESS_VALUES:[I

    .line 173
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MIN_SATURATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_MAX_SATURATION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;->P_KEY_SATURATION_STEP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->createValues(III)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SATURATION_VALUES:[I

    .line 176
    return-void
.end method


# virtual methods
.method public initSeekBar()V
    .locals 2

    .prologue
    .line 324
    const-string v0, "SuperNightModeUI"

    const-string v1, "kbg374, initSeekBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->initValues()V

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->ISO_VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SHARPNESS_VALUES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SATURATION_VALUES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->CONTRAST_VALUES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->EV_VALUES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 333
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0xa

    .line 180
    const-string v0, "SuperNightModeUI"

    const-string v1, "kbg374, onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mConfirmButtion:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mConfirmButtion:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;-><init>(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f1002b4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOTv:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f1002b8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseTv:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f1002b6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessTv:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f1002ba

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessTv:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f1002c0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessTv:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f1002c2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationTv:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f1002c4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastTv:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f1002bc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseTv:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f1002c6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumTv:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f1002be

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvTv:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f1002b3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 209
    const v0, 0x7f1002b7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 213
    const v0, 0x7f1002b5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 217
    const v0, 0x7f1002b9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 221
    const v0, 0x7f1002bb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 225
    const v0, 0x7f1002bf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 228
    const v0, 0x7f1002c1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 231
    const v0, 0x7f1002c3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 234
    const v0, 0x7f1002bd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 237
    const v0, 0x7f1002c5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 242
    sget-boolean v0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->DEVELOP_SHOW_UI:Z

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->hideDevelopUI()V

    .line 245
    :cond_0
    return-void
.end method

.method public setController(Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mController:Lcom/lenovo/scg/camera/mode/controller/SuperNightModeController;

    .line 365
    return-void
.end method

.method public setMode(Lcom/lenovo/scg/camera/mode/NightMode;)V
    .locals 0
    .param p1, "superNightMode"    # Lcom/lenovo/scg/camera/mode/NightMode;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mSuperNightMode:Lcom/lenovo/scg/camera/mode/NightMode;

    .line 361
    return-void
.end method

.method public setSeekBar(IIIIIIILjava/lang/String;II)V
    .locals 2
    .param p1, "brightness"    # I
    .param p2, "sharpness"    # I
    .param p3, "saturation"    # I
    .param p4, "contrast"    # I
    .param p5, "denoise"    # I
    .param p6, "exposure"    # I
    .param p7, "picNum"    # I
    .param p8, "isoValue"    # Ljava/lang/String;
    .param p9, "preDenoise"    # I
    .param p10, "preBrightness"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->ISO_VALUES:Ljava/util/List;

    invoke-interface {v1, p8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v1, p7, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SHARPNESS_VALUES:[I

    invoke-direct {p0, v1, p2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->getIndex([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SATURATION_VALUES:[I

    invoke-direct {p0, v1, p3}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->getIndex([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->CONTRAST_VALUES:[I

    invoke-direct {p0, v1, p4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->getIndex([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->EV_VALUES:[I

    invoke-direct {p0, v1, p6}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->getIndex([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 347
    return-void
.end method
