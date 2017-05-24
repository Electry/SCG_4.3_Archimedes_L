.class public Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;
.super Lcom/lenovo/scg/common/le3d/Le3dWindow;
.source "Le3dGoldBoxWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;
    }
.end annotation


# static fields
.field private static final HILIGHT_BGCOLOR:I = -0xfe6c31

.field private static final ID_CAMERA:I = 0x65

.field private static final ID_EXIT:I = 0x64

.field private static final ID_FACEEFFECT:I = 0x66

.field private static final ID_MATERIALCENTER:I = 0x68

.field private static final ID_PUZZLE:I = 0x67

.field private static final ID_QRCODE:I = 0x6c

.field private static final ID_STARTACTIVITY_BG:I = 0x6e

.field private static final ID_STARTACTIVITY_FG:I = 0x6f

.field private static final ID_VIDEOEDIT:I = 0x6b


# instance fields
.field private mClickIndex:I

.field private mGirdDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mIsStartActivity:Z

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 1
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    .line 61
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsStartActivity:Z

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimation()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->requestStartFunctionFromId(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimationStep2()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimationStep3()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method private createExitImageEnterAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    .locals 6
    .param p1, "exitImage"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "duration"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 752
    const v2, 0x7f0208e7

    invoke-virtual {p1, v2, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 753
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 754
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)V

    .line 755
    .local v0, "exitImageAnimation":Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v1, "imageResList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;>;"
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208e8

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208e9

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ea

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208eb

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ec

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ed

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ee

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->setImageResList(Ljava/util/ArrayList;)V

    .line 764
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 765
    return-object v0
.end method

.method private createExitImageExitAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    .locals 6
    .param p1, "exitImage"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "duration"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 769
    const-string v2, "jiaxw2"

    const-string v3, "GoldBoxView-----createExitImageExitAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)V

    .line 772
    .local v0, "exitImageAnimation":Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v1, "imageResList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;>;"
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ed

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ec

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208eb

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208ea

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208e9

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208e8

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    const v3, 0x7f0208e7

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->setImageResList(Ljava/util/ArrayList;)V

    .line 782
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 784
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->requestRender()V

    .line 786
    return-object v0
.end method

.method private createFadeoutAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    .locals 2
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "duration"    # I

    .prologue
    .line 790
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 791
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 792
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getAlpha()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 793
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 794
    return-object v0
.end method

.method private createGridRotateAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    .locals 2
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "angle"    # F
    .param p3, "duration"    # I

    .prologue
    .line 678
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateX(F)V

    .line 679
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 680
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v0, p1, p3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 681
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 682
    neg-float v1, p2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    .line 683
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 684
    return-object v0
.end method

.method private createGridRotateAnimation2(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FFI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    .locals 8
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "angleX"    # F
    .param p3, "angleY"    # F
    .param p4, "duration"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    .line 688
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateX(F)V

    .line 689
    neg-float v1, p3

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateY(F)V

    .line 690
    cmpl-float v1, p3, v6

    if-lez v1, :cond_2

    .line 691
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateX()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateY()F

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 697
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 698
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v0, p1, p4}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 699
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 700
    neg-float v1, p2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    .line 701
    invoke-virtual {v0, p3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateY(F)V

    .line 702
    cmpl-float v1, p3, v6

    if-lez v1, :cond_3

    .line 703
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v3

    div-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 707
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 708
    return-object v0

    .line 693
    .end local v0    # "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_2
    cmpg-float v1, p3, v6

    if-gez v1, :cond_0

    .line 694
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateX()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateY()F

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    goto :goto_0

    .line 704
    .restart local v0    # "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_3
    cmpg-float v1, p3, v6

    if-gez v1, :cond_1

    .line 705
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v1

    div-float/2addr v1, v5

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v3

    div-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    goto :goto_1
.end method

.method private getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    return-object v0
.end method

.method private getDimensionPixelSize(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 606
    .local v1, "image":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 611
    .end local v1    # "image":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    :goto_1
    return-object v1

    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getIndex(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 590
    const-string/jumbo v2, "wwf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIndex x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/lenovo/scg/common/le3d/Le3dImage;

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 594
    .local v1, "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getVisible()Z

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dImage;->clickTest(FF)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 599
    .end local v0    # "i":I
    .end local v1    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    :goto_1
    return v0

    .line 591
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initGridDataList()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    const/16 v2, 0x65

    const v3, 0x7f0208de

    const v4, 0x7f0f08ef

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    const/16 v2, 0x66

    const v3, 0x7f0208df

    const v4, 0x7f0f08f0

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    const/16 v2, 0x67

    const v3, 0x7f0208f0

    const v4, 0x7f0f08f1

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isQrcodeSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    const/16 v2, 0x6c

    const v3, 0x7f0208f1

    const v4, 0x7f0f08f3

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method private requestStartFunctionFromId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    return-void

    .line 113
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->startCamera()V

    .line 114
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->requestDelayExit()V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->startFaceEffect()V

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->requestDelayExit()V

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->startPuzzle()V

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->requestDelayExit()V

    goto :goto_0

    .line 129
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->startQRCode()V

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->requestDelayExit()V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private startAlphaAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FI)V
    .locals 2
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "alpha"    # F
    .param p3, "duration"    # I

    .prologue
    .line 714
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setAlpha(F)V

    .line 715
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 716
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v0, p1, p3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 717
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 718
    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 719
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 720
    return-void
.end method

.method private startEntryAnimationStep1()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 631
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-direct {p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    move-result-object v0

    .line 632
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$9;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 640
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createExitImageEnterAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 641
    return-void
.end method

.method private startEntryAnimationStep2()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/high16 v4, 0x42b40000    # 90.0f

    const/16 v3, 0x96

    .line 644
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 645
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation2(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FFI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v6, :cond_1

    .line 648
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 651
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation2(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FFI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    move-result-object v0

    .line 652
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$10;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 661
    .end local v0    # "animation":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_2
    return-void
.end method

.method private startEntryAnimationStep3()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/16 v3, 0x64

    const/high16 v2, 0x42c80000    # 100.0f

    .line 664
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation2(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FFI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_1

    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    const/high16 v1, -0x3db80000    # -50.0f

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createGridRotateAnimation2(Lcom/lenovo/scg/common/le3d/Le3dGridImage;FFI)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 675
    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public entry()V
    .locals 0

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimation()V

    .line 864
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startExitAnimation()V

    .line 876
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initGrid()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 136
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->initGridDataList()V

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "offsetX":F
    const/4 v3, 0x0

    .line 139
    .local v3, "offsetY":F
    const v4, 0x7f09049c

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    .line 140
    .local v1, "offsetStep":F
    const/4 v0, 0x0

    .line 143
    .local v0, "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 144
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 145
    const v5, 0x7f0208e0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 146
    invoke-virtual {v0, v10}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 147
    invoke-virtual {v0, v8, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 148
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 149
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getHeight()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 150
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$1;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 189
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float v2, v4, v9

    .line 190
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 191
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 192
    const v4, 0x7f0208e7

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v10, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 194
    invoke-virtual {v0, v10}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 195
    const v4, 0x7f09049e

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f09049f

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setClickPaddingRegin(II)V

    .line 196
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    sub-float/2addr v2, v4

    .line 197
    const v4, 0x7f09049d

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getHeight()F

    move-result v5

    div-float/2addr v5, v9

    sub-float v5, v3, v5

    mul-float v6, v1, v9

    sub-float/2addr v5, v6

    sub-float/2addr v5, v9

    neg-float v5, v5

    invoke-virtual {v0, v4, v5, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 198
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 199
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$2;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 228
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v11, :cond_0

    .line 229
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 230
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 231
    const v5, 0x7f0208e1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 232
    invoke-virtual {v0, v12}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 233
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    sub-float/2addr v4, v1

    neg-float v4, v4

    invoke-virtual {v0, v4, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 234
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 235
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$3;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$3;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v12, :cond_1

    .line 275
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 276
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 277
    const v5, 0x7f0208e2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 278
    invoke-virtual {v0, v11}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 279
    invoke-virtual {v0, v8, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 280
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 281
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 320
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2

    .line 321
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 322
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 323
    const v5, 0x7f0208e3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 324
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 325
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    sub-float/2addr v4, v1

    invoke-virtual {v0, v4, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 326
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 327
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$5;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$5;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 364
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getHeight()F

    move-result v4

    add-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 368
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 369
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 370
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 371
    const v5, 0x7f0208e4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 372
    invoke-virtual {v0, v12}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 373
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    sub-float/2addr v4, v1

    neg-float v4, v4

    invoke-virtual {v0, v4, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 374
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 375
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$6;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$6;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 414
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_4

    .line 415
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 416
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 417
    const v5, 0x7f0208e5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 418
    invoke-virtual {v0, v11}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 419
    invoke-virtual {v0, v8, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 420
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 421
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$7;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$7;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 464
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_5

    .line 465
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 466
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 467
    const v5, 0x7f0208e6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v6, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 468
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 469
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    sub-float/2addr v4, v1

    invoke-virtual {v0, v4, v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 470
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 471
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$8;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 505
    :cond_5
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 506
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    const/16 v4, 0x6e

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 507
    invoke-virtual {v0, v10}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 508
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 510
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .end local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 511
    .restart local v0    # "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    const/16 v4, 0x6f

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setID(I)V

    .line 512
    invoke-virtual {v0, v10}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 513
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 515
    const v4, 0x7f0904a0

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mTranslateY:F

    .line 516
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mTranslateY:F

    invoke-virtual {v4, v8, v5, v8}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setTranslate(FFF)V

    .line 517
    return-void
.end method

.method public initState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsAnimationing:Z

    .line 89
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsStartActivity:Z

    .line 90
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->initGrid()V

    .line 858
    return-void
.end method

.method public layoutContentPane()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 583
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsAnimationing:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsStartActivity:Z

    if-ne v0, v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->hideLe3dGLSrufaceView()V

    goto :goto_0
.end method

.method protected onCallback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V
    .locals 0
    .param p1, "callbackData"    # Lcom/lenovo/scg/common/le3d/Le3dCallbackData;

    .prologue
    .line 899
    return-void
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getRootView()Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getRootView()Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 883
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getRootView()Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getRootView()Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->requestRender()V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getControllerProxy()Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;->exit()V

    .line 887
    return-void
.end method

.method public onMove(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 560
    iget v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    if-ltz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 563
    .local v0, "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dImage;->clickTest(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 567
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    .line 570
    .end local v0    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    :cond_1
    return-void
.end method

.method public onPressDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 524
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsAnimationing:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 536
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getIndex(FF)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    .line 528
    iget v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    if-ltz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 530
    .local v0, "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 531
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 534
    .end local v0    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    :cond_1
    const-string/jumbo v1, "wwf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPressDown getIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getIndex(FF)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPressUp(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 539
    iget v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    if-ltz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 541
    .local v0, "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dImage;->clickTest(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 555
    .end local v0    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mClickIndex:I

    .line 557
    return-void

    .line 548
    .restart local v0    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 550
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsAnimationing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getIndex(FF)I

    move-result v0

    if-gez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->hideLe3dGLSrufaceView()V

    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->requestRender()V

    goto :goto_0
.end method

.method public setStartActivityGrid(Lcom/lenovo/scg/common/le3d/Le3dGridImage;)V
    .locals 6
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "grid":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    const/16 v1, 0x6e

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    .line 802
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 803
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getBgResId()I

    move-result v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getCenter()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(Lcom/lenovo/scg/common/le3d/Position;)V

    .line 805
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslate()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslate()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 806
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getScaleX()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getScaleY()F

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getScaleZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setScale(FFF)V

    .line 807
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->changeCenter(I)V

    .line 809
    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    .line 810
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 811
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getFgResId()I

    move-result v1

    invoke-virtual {v0, v4, v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 812
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getCenter()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(Lcom/lenovo/scg/common/le3d/Position;)V

    .line 813
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslate()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslate()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setTranslate(FFF)V

    .line 814
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getScaleX()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getScaleY()F

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getScaleZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setScale(FFF)V

    .line 815
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->changeCenter(I)V

    .line 816
    return-void
.end method

.method public startActivityAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V
    .locals 10
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "listener"    # Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;

    .prologue
    const/16 v9, 0x12c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 820
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->setStartActivityGrid(Lcom/lenovo/scg/common/le3d/Le3dGridImage;)V

    .line 822
    const/16 v4, 0x6f

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v2

    .line 823
    .local v2, "fg":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-virtual {v2, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 825
    new-instance v3, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v3, v2, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 826
    .local v3, "fgAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateX()F

    move-result v4

    sub-float v4, v7, v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 827
    new-instance v4, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$12;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 841
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 843
    const/16 v4, 0x6e

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    .line 844
    .local v0, "bg":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 846
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v1, v0, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 847
    .local v1, "bgAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getWidth()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getHeight()F

    move-result v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 848
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateX()F

    move-result v4

    sub-float v4, v7, v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getTranslateY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v4, v5, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 849
    invoke-virtual {v1, p2}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 850
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 851
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mIsStartActivity:Z

    .line 852
    return-void
.end method

.method public startEntryAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 616
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->initState()V

    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 619
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 621
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->requestRender()V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimationStep1()V

    .line 626
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_gold_box_view"

    const-string v3, "action_gold_box_view_enter"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 628
    return-void
.end method

.method public startExitAnimation()V
    .locals 8

    .prologue
    const/16 v6, 0x12c

    const/16 v5, 0x64

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 725
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 726
    .local v2, "image":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getID()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 727
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->getGridFromId(I)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createExitImageExitAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    move-result-object v0

    .line 728
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    new-instance v3, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$11;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 724
    .end local v0    # "animation":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getID()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getID()I

    move-result v3

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_0

    .line 743
    invoke-direct {p0, v2, v6}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->createFadeoutAnimation(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    goto :goto_1

    .line 746
    .end local v2    # "image":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_gold_box_view"

    const-string v5, "action_gold_box_view_exit"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 749
    return-void
.end method
