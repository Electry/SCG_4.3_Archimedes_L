.class public Lcom/lenovo/scg/camera/ui/ModeView;
.super Landroid/widget/RelativeLayout;
.source "ModeView.java"


# static fields
.field private static mMapId2Mode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

.field private mModeBeautytext:Landroid/widget/TextView;

.field private mModeBursttext:Landroid/widget/TextView;

.field mModeClicked:Landroid/view/View$OnClickListener;

.field private mModeFullviewtext:Landroid/widget/TextView;

.field private mModeHDRtext:Landroid/widget/TextView;

.field private mModeListView:Landroid/view/ViewGroup;

.field private mModeLowlighttext:Landroid/widget/TextView;

.field private mModeMacrotext:Landroid/widget/TextView;

.field private mModeMask:Landroid/view/View;

.field private mModeNighttext:Landroid/widget/TextView;

.field private mModePIPtext:Landroid/widget/TextView;

.field private mModeSelftext:Landroid/widget/TextView;

.field private mModeSmiletext:Landroid/widget/TextView;

.field private mModeSpeechPhototext:Landroid/widget/TextView;

.field private mModeSpuerNighttext:Landroid/widget/TextView;

.field private mModeTimertext:Landroid/widget/TextView;

.field private mModeWidetext:Landroid/widget/TextView;

.field private mModeexMask:Landroid/widget/ImageView;

.field private mModeextext:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/lenovo/scg/camera/ui/ModeView$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/ui/ModeView$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/ui/ModeView;->mMapId2Mode:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "ModeView"

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ModeView;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/lenovo/scg/camera/ui/ModeView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/ModeView$2;-><init>(Lcom/lenovo/scg/camera/ui/ModeView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mModeClicked:Landroid/view/View$OnClickListener;

    .line 67
    const-string v0, "ModeView"

    const-string v1, "ModeView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/scg/camera/ui/ModeView;->mMapId2Mode:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/ModeView;)Lcom/lenovo/scg/camera/cameramode/CameraModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ModeView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/ModeView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ModeView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mModeListView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 79
    const-string v2, "ModeView"

    const-string/jumbo v3, "onFinishInflate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const v2, 0x7f1006b1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/ModeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mModeListView:Landroid/view/ViewGroup;

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mModeListView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 84
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mModeListView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mModeClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public setPhotoController(Lcom/lenovo/scg/camera/cameramode/CameraModeController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ModeView;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    .line 74
    return-void
.end method
