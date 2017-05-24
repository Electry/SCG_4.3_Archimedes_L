.class public Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;
.super Ljava/lang/Object;
.source "Cameraman_Gallery.java"


# instance fields
.field private cameraman_Images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;",
            ">;"
        }
    .end annotation
.end field

.field private cameraman_gaUpdateTime:Ljava/lang/String;

.field private camerman_typeId:J

.field private gallery_typeName:Ljava/lang/String;

.field private id:J

.field private property1:Ljava/lang/String;

.field private property2:Ljava/lang/String;

.field private property3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->cameraman_Images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCameraman_Images()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->cameraman_Images:Ljava/util/List;

    return-object v0
.end method

.method public getCameraman_gaUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->cameraman_gaUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCamerman_typeId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->camerman_typeId:J

    return-wide v0
.end method

.method public getGallery_typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->gallery_typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->id:J

    return-wide v0
.end method

.method public getProperty1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->property1:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->property2:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->property3:Ljava/lang/String;

    return-object v0
.end method

.method public setCameraman_Images(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "cameraman_Images":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->cameraman_Images:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setCameraman_gaUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraman_gaUpdateTime"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->cameraman_gaUpdateTime:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCamerman_typeId(J)V
    .locals 1
    .param p1, "camerman_typeId"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->camerman_typeId:J

    .line 78
    return-void
.end method

.method public setGallery_typeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gallery_typeName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->gallery_typeName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->id:J

    .line 30
    return-void
.end method

.method public setProperty1(Ljava/lang/String;)V
    .locals 0
    .param p1, "property1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->property1:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setProperty2(Ljava/lang/String;)V
    .locals 0
    .param p1, "property2"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->property2:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setProperty3(Ljava/lang/String;)V
    .locals 0
    .param p1, "property3"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->property3:Ljava/lang/String;

    .line 70
    return-void
.end method
