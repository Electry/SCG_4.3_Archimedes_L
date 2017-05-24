.class public Lcom/lenovo/scg/common/utils/android/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static methodMode:Ljava/lang/reflect/Method;

.field private static mtkPQClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->mtkPQClass:Ljava/lang/Class;

    .line 36
    sput-object v0, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterPictureQualityMode()V
    .locals 6

    .prologue
    .line 130
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->initMtkPQClass()V

    .line 135
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->mtkPQClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --enterPictureQualityMode----e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static exitPictureQualityMode()V
    .locals 6

    .prologue
    .line 112
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->initMtkPQClass()V

    .line 115
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->mtkPQClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --exitPictureQualityMode----e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreviewRect(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;
    .locals 11
    .param p0, "mPreviewSize"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v10, 0x0

    .line 182
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 183
    .local v3, "mtmpRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 184
    .local v5, "w":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 186
    .local v1, "h":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 187
    .local v2, "mPreviewRect":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Landroid/hardware/Camera$Size;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    invoke-virtual {v2, v10, v10, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    :goto_0
    return-object v2

    .line 192
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 193
    .local v0, "chang":I
    const-string v6, "getPreviewRect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chang: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    int-to-float v6, v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 196
    .local v4, "previewH":I
    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v10, v6, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    int-to-double v6, v0

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    div-double/2addr v6, v8

    neg-double v6, v6

    double-to-int v6, v6

    invoke-virtual {v2, v10, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public static getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "fileUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    .local v8, "fileName":Ljava/lang/String;
    move-object v9, p0

    .line 73
    .local v9, "filePathUri":Landroid/net/Uri;
    if-eqz p0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 77
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 80
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 82
    .end local v6    # "column_index":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getScreenRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 163
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 164
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 165
    .local v1, "mPoint":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 166
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 167
    .local v2, "mRect":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    return-object v2
.end method

.method public static hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 56
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 58
    return-void
.end method

.method public static initMtkPQClass()V
    .locals 7

    .prologue
    .line 94
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->mtkPQClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 95
    const-string v0, "com.mediatek.pq.PictureQuality"

    .line 96
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->mtkPQClass:Ljava/lang/Class;

    .line 98
    :cond_0
    sget-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    sget-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->mtkPQClass:Ljava/lang/Class;

    const-string/jumbo v3, "setMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    .line 99
    :cond_1
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --initMtkPQClass---method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->methodMode:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --initMtkPQClass----e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isGpsOpened()Z
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    .local v0, "context":Landroid/content/Context;
    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 216
    .local v2, "locationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 218
    .local v1, "isGpsOpened":Z
    return v1
.end method

.method public static isUSERType()Z
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "user"

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getBuildType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 44
    return-void
.end method
