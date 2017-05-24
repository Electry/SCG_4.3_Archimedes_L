.class public Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;
.super Ljava/lang/Object;
.source "CameramanInfo.java"


# instance fields
.field private cameraman_Gallerys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private face_Imgs:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private property1:Ljava/lang/String;

.field private property2:Ljava/lang/String;

.field private property3:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->cameraman_Gallerys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCameraman_Gallerys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->cameraman_Gallerys:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_Imgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->face_Imgs:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->property1:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->property2:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->property3:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCameraman_Gallerys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "cameraman_Gallerys":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->cameraman_Gallerys:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->content:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFace_Imgs(Ljava/lang/String;)V
    .locals 0
    .param p1, "face_Imgs"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->face_Imgs:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->id:J

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setProperty1(Ljava/lang/String;)V
    .locals 0
    .param p1, "property1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->property1:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setProperty2(Ljava/lang/String;)V
    .locals 0
    .param p1, "property2"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->property2:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setProperty3(Ljava/lang/String;)V
    .locals 0
    .param p1, "property3"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->property3:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->updateTime:Ljava/lang/String;

    .line 96
    return-void
.end method
