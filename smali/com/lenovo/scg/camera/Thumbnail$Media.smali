.class Lcom/lenovo/scg/camera/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final id:J

.field public nHeight:I

.field public nWidth:I

.field public final orientation:I

.field public sPath:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "orientation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput v0, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->nWidth:I

    .line 547
    iput v0, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->nHeight:I

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->sPath:Ljava/lang/String;

    .line 530
    iput-wide p1, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->id:J

    .line 531
    iput p3, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->orientation:I

    .line 532
    iput-wide p4, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    .line 533
    iput-object p6, p0, Lcom/lenovo/scg/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 534
    return-void
.end method
