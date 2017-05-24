.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemVersion;
.super Ljava/lang/Object;
.source "SystemVersion.java"


# static fields
.field public static final BOOL_FALSE:Ljava/lang/String; = "false"

.field public static final BOOL_TRUE:Ljava/lang/String; = "true"

.field public static final KEY_BACKGROUND_DATA:Ljava/lang/String; = "persist.backgrounddata.enable"

.field public static final KEY_CTA:Ljava/lang/String; = "ro.lenovo.cta"

.field public static final KEY_OPERATOR:Ljava/lang/String; = "ro.lenovo.operator"

.field public static final KEY_REGION:Ljava/lang/String; = "ro.lenovo.region"

.field public static final OPERATOR_CMCC:Ljava/lang/String; = "cmcc"

.field public static final OPERATOR_DEFAULT:Ljava/lang/String; = "open"

.field public static final REGION_DEFAULT:Ljava/lang/String; = "prc"

.field public static final REGION_ROW:Ljava/lang/String; = "row"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBackgroundDataEnabled()Z
    .locals 3

    .prologue
    .line 38
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.backgrounddata.enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCmcc()Z
    .locals 3

    .prologue
    .line 28
    const-string v0, "cmcc"

    const-string/jumbo v1, "ro.lenovo.operator"

    const-string/jumbo v2, "open"

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCta()Z
    .locals 3

    .prologue
    .line 33
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.lenovo.cta"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRow()Z
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "row"

    const-string/jumbo v1, "ro.lenovo.region"

    const-string/jumbo v2, "prc"

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
