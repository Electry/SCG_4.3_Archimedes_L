.class Lcom/lenovo/scg/gallery3d/data/TimeClustering$DateComparator;
.super Ljava/lang/Object;
.source "TimeClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/TimeClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/scg/gallery3d/data/SmallItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/TimeClustering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/TimeClustering$1;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/TimeClustering$DateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)I
    .locals 4
    .param p1, "item1"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .param p2, "item2"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .prologue
    .line 95
    iget-wide v0, p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p2, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/TimeClustering$DateComparator;->compare(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)I

    move-result v0

    return v0
.end method
