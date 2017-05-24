.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;
.super Ljava/lang/Object;
.source "ImageFile.java"


# instance fields
.field private id:I

.field private imageName:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private mFileBmp:Landroid/graphics/Bitmap;

.field private mId:I

.field private realUrl:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private typeName:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->mFileBmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->mFileBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->id:I

    return v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRealUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->realUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->mId:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->mFileBmp:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->id:I

    .line 39
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->imageName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->imageUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRealUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "realUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->realUrl:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->type:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->typeName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->updateTime:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->mId:I

    .line 87
    return-void
.end method
