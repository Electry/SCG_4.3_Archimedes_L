.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo$ImageInfoComparator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53b9a7d4c3057781L


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

.field private compressed:Ljava/lang/String;

.field private downurl:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private size:I

.field private thubmUrl144:Ljava/lang/String;

.field private thubmUrl200:Ljava/lang/String;

.field private thubmUrl640:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->allThubmUrlMap:Ljava/util/Map;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->size:I

    return v0
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 63
    const-wide v0, -0x53b9a7d4c3057781L    # -2.0921858968967573E-95

    return-wide v0
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
    .line 134
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->allThubmUrlMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCompressed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->compressed:Ljava/lang/String;

    return-object v0
.end method

.method public getDownurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->downurl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->size:I

    return v0
.end method

.method public getThubmUrl144()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->thubmUrl144:Ljava/lang/String;

    return-object v0
.end method

.method public getThubmUrl200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->thubmUrl200:Ljava/lang/String;

    return-object v0
.end method

.method public getThubmUrl640()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->thubmUrl640:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->width:I

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
    .line 137
    .local p1, "allThubmUrlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->allThubmUrlMap:Ljava/util/Map;

    .line 138
    return-void
.end method

.method public setCompressed(Ljava/lang/String;)V
    .locals 0
    .param p1, "compressed"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->compressed:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setDownurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downurl"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->downurl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->height:I

    .line 55
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->origin:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->size:I

    .line 61
    return-void
.end method

.method public setThubmUrl144(Ljava/lang/String;)V
    .locals 2
    .param p1, "thubmUrl144"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x90

    .line 104
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->thubmUrl144:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-static {v1, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public setThubmUrl200(Ljava/lang/String;)V
    .locals 2
    .param p1, "thubmUrl200"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc8

    .line 111
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->thubmUrl200:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-static {v1, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public setThubmUrl640(Ljava/lang/String;)V
    .locals 2
    .param p1, "thubmUrl640"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x280

    .line 97
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->thubmUrl640:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->allThubmUrlMap:Ljava/util/Map;

    invoke-static {v1, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getThubmKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->userId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->width:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageInfo [userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
