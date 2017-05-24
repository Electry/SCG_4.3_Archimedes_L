.class Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;
.super Ljava/lang/Object;
.source "ComboSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)V
    .locals 1

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->this$0:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    # getter for: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$000(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 239
    # getter for: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$100(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 240
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 260
    return-object p0
.end method

.method public commit()Z
    .locals 3

    .prologue
    .line 244
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 245
    .local v0, "result1":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 246
    .local v1, "result2":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 312
    # invokes: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    :goto_0
    return-object p0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 302
    # invokes: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 307
    :goto_0
    return-object p0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 282
    # invokes: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    :goto_0
    return-object p0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 292
    # invokes: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 297
    :goto_0
    return-object p0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 272
    # invokes: Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    :goto_0
    return-object p0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    return-object p0
.end method
