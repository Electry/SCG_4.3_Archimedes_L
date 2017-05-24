.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;
.super Ljava/lang/Object;
.source "SingleCommand.java"


# instance fields
.field effectParams:[I

.field private eye_vivi:I

.field private eye_wide:I

.field private face_small:I

.field private face_white:I

.field faceid:I

.field relativeFaceRect:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->faceid:I

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    .line 17
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_white:I

    .line 19
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_small:I

    .line 21
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_vivi:I

    .line 23
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_wide:I

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->relativeFaceRect:[I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;)V
    .locals 2
    .param p1, "mCommand"    # Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->faceid:I

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    .line 17
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_white:I

    .line 19
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_small:I

    .line 21
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_vivi:I

    .line 23
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_wide:I

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->relativeFaceRect:[I

    .line 30
    iget v0, p1, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->faceid:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->faceid:I

    .line 31
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    .line 32
    iget v0, p1, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_small:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_small:I

    .line 33
    iget v0, p1, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_white:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_white:I

    .line 34
    iget v0, p1, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_vivi:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_vivi:I

    .line 35
    iget v0, p1, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_wide:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_wide:I

    .line 36
    return-void
.end method


# virtual methods
.method public getEffectParams()[I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    return-object v0
.end method

.method public getEye_vivi()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_vivi:I

    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_vivi:I

    return v0
.end method

.method public getEye_wide()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_wide:I

    .line 72
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->eye_wide:I

    return v0
.end method

.method public getFace_small()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_small:I

    .line 54
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_small:I

    return v0
.end method

.method public getFace_white()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_white:I

    .line 45
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->face_white:I

    return v0
.end method

.method public getFaceid()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->faceid:I

    return v0
.end method

.method public getRelativeFaceRect()[I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->relativeFaceRect:[I

    return-object v0
.end method

.method public setEffectParams([I)V
    .locals 0
    .param p1, "effectParams"    # [I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    .line 101
    return-void
.end method

.method public setEye_vivi(I)V
    .locals 2
    .param p1, "eye_vivi"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x5

    aput p1, v0, v1

    .line 68
    return-void
.end method

.method public setEye_wide(I)V
    .locals 2
    .param p1, "eye_wide"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 77
    return-void
.end method

.method public setFace_small(I)V
    .locals 2
    .param p1, "face_small"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 59
    return-void
.end method

.method public setFace_white(I)V
    .locals 2
    .param p1, "face_white"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->effectParams:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 50
    return-void
.end method

.method public setFaceid(I)V
    .locals 0
    .param p1, "faceid"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->faceid:I

    .line 89
    return-void
.end method

.method public setRelativeFaceRect([I)V
    .locals 0
    .param p1, "relativeFaceRect"    # [I

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->relativeFaceRect:[I

    .line 85
    return-void
.end method
