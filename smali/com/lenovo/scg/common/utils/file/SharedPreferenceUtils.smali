.class public Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;
.super Ljava/lang/Object;
.source "SharedPreferenceUtils.java"


# static fields
.field private static final CAMERA_GLOBAL_PREFERENCE:Ljava/lang/String; = "_preferences_camera"

.field private static final CAMERA_LOCAL_PREFERENCE:Ljava/lang/String; = "_preferences_"

.field private static final GALLERY_GLOBAL_PREFERENCE:Ljava/lang/String; = "_preferences_gallery"

.field private static final PREFERENCE:Ljava/lang/String; = "_preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PutBooleanCommit(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 222
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 223
    :cond_0
    const/4 v1, 0x1

    const-string v2, "PutBooleanCommit"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static PutFloatCommit(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 3
    .param p0, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 203
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 204
    :cond_0
    const/4 v1, 0x1

    const-string v2, "PutFloatCommit"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static PutIntCommit(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 3
    .param p0, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 145
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 146
    :cond_0
    const/4 v1, 0x1

    const-string v2, "PutIntCommit"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static PutLongCommit(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 4
    .param p0, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 165
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    const/4 v1, 0x1

    const-string v2, "PutLongCommit"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static PutStringCommit(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x1

    const-string v2, "PutStringCommit"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getCameraGlobPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraGlobalPreferencesName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getCameraGlobalPreferencesName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraLocalPreferences(I)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "cameraId"    # I

    .prologue
    .line 99
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferencesName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getCameraLocalPreferencesName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGalleryLocalPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getGalleryPreferenceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getGalleryPreferenceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSCGPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferencesName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getSCGPreferencesName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
