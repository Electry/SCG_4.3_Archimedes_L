.class public Lcom/lenovo/scg/common/utils/ListSort;
.super Ljava/lang/Object;
.source "ListSort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/ListSort$1;,
        Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;
    }
.end annotation


# static fields
.field private static mSizeComparator:Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;-><init>(Lcom/lenovo/scg/common/utils/ListSort$1;)V

    sput-object v0, Lcom/lenovo/scg/common/utils/ListSort;->mSizeComparator:Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static SortSize(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/scg/common/utils/ListSort;->mSizeComparator:Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/lenovo/scg/common/utils/ListSort;->mSizeComparator:Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    :cond_0
    return-void
.end method
