.class public Lcom/lenovo/scg/common/utils/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# instance fields
.field private mFaceOrient:[I

.field private mRects:[Landroid/graphics/Rect;

.field private nFace:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mRects:[Landroid/graphics/Rect;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->nFace:I

    .line 15
    iput-object v1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mFaceOrient:[I

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "mFaceNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v2, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mRects:[Landroid/graphics/Rect;

    .line 14
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->nFace:I

    .line 15
    iput-object v2, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mFaceOrient:[I

    .line 18
    new-array v1, p1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mRects:[Landroid/graphics/Rect;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mRects:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mFaceOrient:[I

    .line 23
    return-void
.end method


# virtual methods
.method public getFaceNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->nFace:I

    return v0
.end method

.method public getFaceOrients()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mFaceOrient:[I

    return-object v0
.end method

.method public getFaceRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public setFaceNumber(I)V
    .locals 0
    .param p1, "mFaceNumber"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->nFace:I

    .line 46
    return-void
.end method

.method public setFaceOrients([I)V
    .locals 0
    .param p1, "mFaceOrients"    # [I

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mFaceOrient:[I

    .line 54
    return-void
.end method

.method public setFaceRects([Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mFaceRects"    # [Landroid/graphics/Rect;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/FaceInfo;->mRects:[Landroid/graphics/Rect;

    .line 38
    return-void
.end method
