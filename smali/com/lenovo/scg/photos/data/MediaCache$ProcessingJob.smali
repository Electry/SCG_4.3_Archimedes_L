.class Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessingJob"
.end annotation


# instance fields
.field public complete:Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;

.field public contentUri:Landroid/net/Uri;

.field public lowResolution:Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

.field public size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p3, "complete"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;
    .param p4, "lowResolution"    # Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    .line 191
    iput-object p2, p0, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->size:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .line 192
    iput-object p3, p0, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->complete:Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;

    .line 193
    iput-object p4, p0, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    .line 194
    return-void
.end method
