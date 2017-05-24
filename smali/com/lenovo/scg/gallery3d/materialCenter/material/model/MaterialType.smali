.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;
.super Ljava/lang/Object;
.source "MaterialType.java"


# instance fields
.field private imageFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private type:I

.field private typeName:Ljava/lang/String;

.field private type_img_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->imageFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImageFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->imageFiles:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getType_img_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->type_img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->mId:I

    return v0
.end method

.method public setImageFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "simageFiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->imageFiles:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->type:I

    .line 24
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->typeName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setType_img_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "type_img_url"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->type_img_url:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->mId:I

    .line 48
    return-void
.end method
