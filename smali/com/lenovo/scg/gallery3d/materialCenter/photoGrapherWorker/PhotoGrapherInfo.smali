.class public Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;
.super Ljava/lang/Object;
.source "PhotoGrapherInfo.java"


# static fields
.field public static final SPLIT_STRING:Ljava/lang/String; = ";"


# instance fields
.field private mAllPhotoSorts:Ljava/lang/String;

.field private mAllPhotos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhotoGrapherDetails:Ljava/lang/String;

.field private mPhotoGrapherName:Ljava/lang/String;

.field private mPhotoGrapherPhotoUrl:Ljava/lang/String;

.field private mPhotoGrapherWebsite:Ljava/lang/String;

.field private mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

.field private mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    .line 37
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotos:Ljava/util/Map;

    .line 39
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->init()V

    .line 40
    return-void
.end method


# virtual methods
.method public addPhotos(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "photourls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotos:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    if-eqz p2, :cond_1

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 74
    .local v1, "photoinfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    if-eqz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->saveLargePhotoUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->saveMinPhotoUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->savePhotoUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->saveLargePhotoId(Ljava/lang/String;J)V

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v1    # "photoinfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_1
    return-void
.end method

.method public getAllPhotoSorts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotoSorts:Ljava/lang/String;

    return-object v0
.end method

.method public getLargePhotoId(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->getLargePhotoId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargePhotoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->getLargePhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinPhotoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->getMinPhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoGrapherDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoGrapherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoGrapherPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoGrapherWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoNumsBySort(Ljava/lang/String;)I
    .locals 1
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->getSortPhotosNum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUpdateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->getUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->getPhotoGrapherName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherName:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->getPhotoGrapherDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherDetails:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->getPhotoGrapherPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherPhotoUrl:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->getPhotoGrapherWebsite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherWebsite:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->getPhotoGrapherSorts()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotoSorts:Ljava/lang/String;

    goto :goto_0
.end method

.method public reSetSharepreferenceUrls()V
    .locals 10

    .prologue
    .line 86
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotos:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotos:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 105
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->reset()V

    .line 90
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotos:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 91
    .local v2, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    .local v5, "sort":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotos:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    .local v3, "photoGrapherWorkPhotoInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    if-eqz v3, :cond_2

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 95
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 96
    .local v4, "photoinfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    if-eqz v4, :cond_3

    .line 97
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->saveLargePhotoUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->saveMinPhotoUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->savePhotoUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mUrlSharedPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherPhotoUrlkPreference;->saveLargePhotoId(Ljava/lang/String;J)V

    .line 94
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public savePhotoNumBySort(Ljava/lang/String;I)V
    .locals 1
    .param p1, "sort"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->saveSortPhotosNum(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public setAllPhotoSort(Ljava/lang/String;)V
    .locals 1
    .param p1, "allPhotoSort"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotoSorts:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotoSorts:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mAllPhotoSorts:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->savePhotoGrapherSorts(Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method

.method public setPhotoGrapherDetails(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoGrapherDetails"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherDetails:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->savePhotoGrapherDetails(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setPhotoGrapherName(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoGrapherName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherName:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->savePhotoGrapherName(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setPhotoGrapherPhotoUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoGrapherPhotoUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherPhotoUrl:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->savePhotoGrapherPhotoUrl(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setPhotoGrapherWebsite(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoGrapherWebsite"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPhotoGrapherWebsite:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->mPreference:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPreference;->savePhotoGrapherWebsite(Ljava/lang/String;)V

    .line 55
    return-void
.end method
