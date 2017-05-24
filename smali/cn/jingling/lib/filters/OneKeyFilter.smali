.class public abstract Lcn/jingling/lib/filters/OneKeyFilter;
.super Lcn/jingling/lib/filters/Filter;
.source "OneKeyFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/jingling/lib/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "args"    # [I

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcn/jingling/lib/filters/OneKeyFilter;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected statisticEvent()V
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 16
    return-void
.end method
