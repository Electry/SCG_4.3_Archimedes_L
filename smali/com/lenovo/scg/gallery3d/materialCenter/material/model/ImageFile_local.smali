.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;
.super Ljava/lang/Object;
.source "ImageFile_local.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private img_local:Landroid/graphics/Bitmap;

.field private mTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_local()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->img_local:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->fileName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setImg_local(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "img_local"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->img_local:Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method

.method public setmTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTypeName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->mTypeName:Ljava/lang/String;

    .line 27
    return-void
.end method
