.class Lcom/lenovo/scg/photos/data/MediaCacheDatabase$QueryCacheResults;
.super Ljava/lang/Object;
.source "MediaCacheDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/MediaCacheDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryCacheResults"
.end annotation


# instance fields
.field public id:J

.field public size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "sizeVal"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/lenovo/scg/photos/data/MediaCacheDatabase$QueryCacheResults;->id:J

    .line 85
    invoke-static {p3}, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->fromInteger(I)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/MediaCacheDatabase$QueryCacheResults;->size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .line 86
    return-void
.end method
