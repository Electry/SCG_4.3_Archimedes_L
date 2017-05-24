.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
.super Ljava/lang/Object;
.source "MaterialPreference.java"


# static fields
.field private static final MATERIAL_ONLINE_PARAM:Ljava/lang/String; = "MATERIAL_ONLINE_PARAM"

.field private static final MATERIAL_TYPE_COUNT:Ljava/lang/String; = "MATERIAL_TYPE_COUNT"

.field private static final MATERIAL_TYPE_ID:Ljava/lang/String; = "MATERIAL_TYPE_ID"

.field private static final MATERIAL_TYPE_IMAGEURL:Ljava/lang/String; = "MATERIAL_TYPE_IMAGEURL"

.field private static final MATERIAL_TYPE_NAME:Ljava/lang/String; = "MATERIAL_TYPE_NAME"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, "MATERIAL_ONLINE_PARAM"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method


# virtual methods
.method public getMaterialTypeCount()I
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MATERIAL_TYPE_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaterialTypeId(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATERIAL_TYPE_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaterialTypeImageUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATERIAL_TYPE_IMAGEURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaterialTypeName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATERIAL_TYPE_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveMaterialTypeCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MATERIAL_TYPE_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public saveMaterialTypeId(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATERIAL_TYPE_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public saveMaterialTypeImageUrl(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATERIAL_TYPE_IMAGEURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public saveMaterialTypeName(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "typeName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATERIAL_TYPE_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method
