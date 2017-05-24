.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;
.super Ljava/lang/Object;
.source "MaterialType_local.java"


# instance fields
.field private imgBitmap:Landroid/graphics/Bitmap;

.field private imgUrl:Ljava/lang/String;

.field private img_local_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->img_local_List:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImgBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->imgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_local_List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->img_local_List:Ljava/util/List;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->mId:I

    return v0
.end method

.method public getmTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setImgBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imgBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->imgBitmap:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->imgUrl:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setImg_local_List(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "img_local_List":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->img_local_List:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->mId:I

    .line 26
    return-void
.end method

.method public setmTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTypeName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->mTypeName:Ljava/lang/String;

    .line 34
    return-void
.end method
