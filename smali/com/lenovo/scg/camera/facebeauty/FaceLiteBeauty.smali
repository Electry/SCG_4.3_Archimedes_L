.class public Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;
.super Ljava/lang/Object;
.source "FaceLiteBeauty.java"


# static fields
.field private static final BEAUTY_MAX:I = 0x64

.field private static final BEAUTY_VALUE_BIG_EYE:I = 0x14

.field private static final BEAUTY_VALUE_BRIGHT:I = 0xf

.field private static final BEAUTY_VALUE_BRIGHT_EYE:I = 0x14

.field private static final BEAUTY_VALUE_SLENDER:I = 0xa

.field private static final BEAUTY_VALUE_SOFTEN:I = 0x1e

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FaceLiteBeauty"


# instance fields
.field private mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private findProperBigEye(I)I
    .locals 3
    .param p1, "sex"    # I

    .prologue
    .line 249
    const-string v0, "FaceLiteBeauty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findProperBigEye, sex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v0, 0x14

    return v0
.end method

.method private findProperBright(I)I
    .locals 3
    .param p1, "sex"    # I

    .prologue
    .line 304
    const-string v0, "FaceLiteBeauty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findProperBright, sex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/16 v0, 0xf

    return v0
.end method

.method private findProperBrightEye(I)I
    .locals 3
    .param p1, "sex"    # I

    .prologue
    .line 276
    const-string v0, "FaceLiteBeauty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findProperBrightEye, sex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v0, 0x14

    return v0
.end method

.method private findProperSlender(I)I
    .locals 3
    .param p1, "sex"    # I

    .prologue
    .line 331
    const-string v0, "FaceLiteBeauty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findProperBright, sex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v0, 0xa

    return v0
.end method

.method private findProperSoften(I)I
    .locals 1
    .param p1, "sex"    # I

    .prologue
    .line 244
    const/16 v0, 0x1e

    return v0
.end method


# virtual methods
.method public processStaticImageBeautyFace([BIII)[B
    .locals 14
    .param p1, "data"    # [B
    .param p2, "pictureWidth"    # I
    .param p3, "pictureHeight"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 173
    const-string v2, "FaceLiteBeauty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processStaticImageBeautyFace, pictureWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pictureHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->createPicPostProcessJNI(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    move-result-object v1

    .line 176
    .local v1, "picPostProcessJNI":Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    const-string v2, "FaceLiteBeauty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAgenderParams = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget v2, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    if-ge v10, v2, :cond_2

    .line 179
    new-instance v11, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;-><init>()V

    .line 180
    .local v11, "p":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    const-string v2, "FaceLiteBeauty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gender = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v4, v4, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", age = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v4, v4, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v13, 0x1

    .line 183
    .local v13, "sex":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    aget v13, v2, v10

    .line 188
    :goto_1
    const/16 v9, 0x14

    .line 189
    .local v9, "age":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    aget v9, v2, v10

    .line 194
    :goto_2
    const-string v2, "FaceLiteBeauty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "sex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", age = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, v13}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->findProperBigEye(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeEnlargmentLevel(I)V

    .line 196
    invoke-direct {p0, v13}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->findProperBrightEye(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeBrightLevel(I)V

    .line 197
    invoke-direct {p0, v13}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->findProperSoften(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    .line 198
    invoke-direct {p0, v13}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->findProperBright(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 199
    invoke-direct {p0, v13}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->findProperSlender(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSlenderFaceLevel(I)V

    .line 200
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 186
    .end local v9    # "age":I
    :cond_0
    const-string v2, "FaceLiteBeauty"

    const-string v3, "mAgenderParams.mGenderResultArray = null!! sex is default: famale!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    .restart local v9    # "age":I
    :cond_1
    const-string v2, "FaceLiteBeauty"

    const-string v3, "mAgenderParams.mAgeResultArray = null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 209
    .end local v9    # "age":I
    .end local v11    # "p":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    .end local v13    # "sex":I
    :cond_2
    array-length v3, p1

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v6, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v7, v2, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    move-object v2, p1

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFaceFromYUVData([BIII[Landroid/graphics/Rect;[ILjava/util/ArrayList;)[B

    move-result-object v12

    .line 214
    .local v12, "result":[B
    invoke-static {}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->destroyPicPostProcess()V

    .line 215
    const/4 v1, 0x0

    .line 217
    return-object v12
.end method

.method public setAgenderParams(Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 1
    .param p1, "params"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 156
    iput-object p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 157
    return-void
.end method
