.class Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;
.super Ljava/lang/Object;
.source "ListSort.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/ListSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/common/utils/ListSort$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/common/utils/ListSort$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4
    .param p1, "lhs"    # Landroid/hardware/Camera$Size;
    .param p2, "rhs"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 20
    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    if-le v2, v3, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_3

    .line 23
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    if-gt v2, v3, :cond_0

    .line 25
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v2, :cond_2

    .line 26
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 28
    goto :goto_0

    :cond_3
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/common/utils/ListSort$SizeComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
