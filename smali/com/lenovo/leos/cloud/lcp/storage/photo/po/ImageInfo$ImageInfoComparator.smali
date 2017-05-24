.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo$ImageInfoComparator;
.super Ljava/lang/Object;
.source "ImageInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)I
    .locals 10
    .param p1, "imageInfo1"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;
    .param p2, "imageInfo2"    # Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 76
    if-ne p1, p2, :cond_1

    move v2, v4

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 79
    :cond_1
    if-eqz p2, :cond_0

    .line 82
    if-nez p1, :cond_2

    move v2, v3

    .line 83
    goto :goto_0

    .line 87
    :cond_2
    # getter for: Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->size:I
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)I

    move-result v5

    # getter for: Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->size:I
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;->access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v0, v5

    .line 88
    .local v0, "dateDiff":J
    cmp-long v5, v0, v8

    if-gtz v5, :cond_0

    cmp-long v2, v0, v8

    if-gez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo$ImageInfoComparator;->compare(Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;Lcom/lenovo/leos/cloud/lcp/storage/photo/po/ImageInfo;)I

    move-result v0

    return v0
.end method
