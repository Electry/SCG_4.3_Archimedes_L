.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;
.super Ljava/lang/Object;
.source "AlbumInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1950cfb0a9b0d3c4L


# instance fields
.field private allThubmUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private cover144:Ljava/lang/String;

.field private cover200:Ljava/lang/String;

.field private cover640:Ljava/lang/String;

.field private coverName:Ljava/lang/String;

.field private coverOriginalUrl:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:J

.field private userId:Ljava/lang/String;

.field private version:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    .line 9
    return-void
.end method


# virtual methods
.method public getAllThubmUrlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->count:I

    return v0
.end method

.method public getCover144()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover144:Ljava/lang/String;

    return-object v0
.end method

.method public getCover200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover200:Ljava/lang/String;

    return-object v0
.end method

.method public getCover640()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover640:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->coverName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->coverOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->size:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->version:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->width:I

    return v0
.end method

.method public setAllThubmUrlMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "allThubmUrlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->count:I

    .line 63
    return-void
.end method

.method public setCover144(Ljava/lang/String;)V
    .locals 2
    .param p1, "cover144"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x90

    .line 88
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover144:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-static {v1, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setCover200(Ljava/lang/String;)V
    .locals 2
    .param p1, "cover200"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc8

    .line 95
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover200:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-static {v1, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public setCover640(Ljava/lang/String;)V
    .locals 2
    .param p1, "cover640"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x280

    .line 81
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover640:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-static {v1, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setCoverName(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->coverName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setCoverOriginalUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverOriginalUrl"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->coverOriginalUrl:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->height:I

    .line 75
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->size:J

    .line 125
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->userId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVersion(J)V
    .locals 1
    .param p1, "version"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->version:J

    .line 38
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->width:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlbumInfo [userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cover144="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover144:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cover200="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->cover200:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, ", allThubmUrlMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/AlbumInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
