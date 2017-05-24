.class public Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;
.super Lcom/lenovo/scg/common/le3d/Le3dAnimation;
.source "Le3dSwitchImageAnimation.java"


# instance fields
.field private mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mImageResList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mNeedRecycle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dGridImage;I)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .param p2, "duration"    # I

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;-><init>(I)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 25
    return-void
.end method


# virtual methods
.method protected onCalculate(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 38
    const-string v1, "jiaxw2"

    const-string v2, "G3dSwitchImageView-------onCalculate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mImageResList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 41
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    if-eq v0, v1, :cond_0

    .line 42
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    .line 43
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mImageResList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;)V

    .line 44
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->requestRender()V

    .line 46
    :cond_0
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->onStop()V

    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    .line 52
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mImageResList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mImageResList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mImageResList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;)V

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->requestRender()V

    .line 62
    :cond_0
    return-void
.end method

.method public setImageResList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "imageResList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/common/le3d/Le3dGridImage$ImageRes;>;"
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mImageResList:Ljava/util/ArrayList;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mIndex:I

    .line 34
    return-void
.end method

.method public setView(Lcom/lenovo/scg/common/le3d/Le3dGridImage;)V
    .locals 0
    .param p1, "image"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dSwitchImageAnimation;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 29
    return-void
.end method
