.class public Lcn/jingling/lib/filters/onekey/Original;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "Original.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 11
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/Original;->statisticEvent()V

    .line 12
    return-object p2
.end method
