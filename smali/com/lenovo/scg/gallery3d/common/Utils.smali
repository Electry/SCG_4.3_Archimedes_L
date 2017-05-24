.class public Lcom/lenovo/scg/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/common/Utils$1;,
        Lcom/lenovo/scg/gallery3d/common/Utils$EntryInfo;
    }
.end annotation


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "GalleryDebug"

.field private static final INITIALCRC:J = -0x1L

.field private static final INVEST_ON:Z = false

.field private static final IS_DEBUG_BUILD:Z

.field private static final MASK_STRING:Ljava/lang/String; = "********************************"

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final TAG_TJR:Ljava/lang/String; = "tangjr-tag"

.field private static sCrcTable:[J

.field private static stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/common/Utils$EntryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 49
    new-array v6, v10, [J

    sput-object v6, Lcom/lenovo/scg/gallery3d/common/Utils;->sCrcTable:[J

    .line 51
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/lenovo/scg/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    .line 77
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/lenovo/scg/gallery3d/common/Utils;->stack:Ljava/util/List;

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_4

    .line 217
    int-to-long v2, v0

    .line 218
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3

    .line 219
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 220
    .local v4, "x":J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 51
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "part":J
    .end local v4    # "x":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 219
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "part":J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 222
    :cond_3
    sget-object v6, Lcom/lenovo/scg/gallery3d/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "j":I
    .end local v2    # "part":J
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static TangjrLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "sMsg"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string/jumbo v0, "tangjr-tag"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 63
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "sMsg":Ljava/lang/String;
    const-string/jumbo v1, "tangjr-tag"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static TangjrPrintStackTraces()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x1

    const-string/jumbo v1, "tangjr-tag"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method public static ceilLog2(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 260
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_1

    .line 262
    :cond_0
    return v0

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 137
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 178
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 180
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 179
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 180
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 171
    if-le p0, p2, :cond_0

    .line 173
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 172
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 173
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 185
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 187
    .end local p4    # "max":J
    :goto_0
    return-wide p4

    .line 186
    .restart local p4    # "max":J
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 187
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 283
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 275
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 245
    if-nez p0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "Utils"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 254
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [Ljava/lang/String;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 391
    new-array v0, p1, [Ljava/lang/String;

    .line 392
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 393
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    return-object v0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    const-wide/16 v0, 0x0

    .line 210
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .prologue
    .line 227
    const-wide/16 v0, -0x1

    .line 228
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 229
    sget-object v4, Lcom/lenovo/scg/gallery3d/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-wide v0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 409
    const-string v0, "GalleryDebug"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 143
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 359
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 365
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :sswitch_2
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 363
    :sswitch_3
    const-string v4, "&#039;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    :sswitch_4
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static floorLog2(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 268
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 270
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 236
    .local v6, "result":[B
    const/4 v4, 0x0

    .line 237
    .local v4, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v5, v4

    .end local v4    # "output":I
    .local v5, "output":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 238
    .local v1, "ch":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "output":I
    .restart local v4    # "output":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 239
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "output":I
    .restart local v5    # "output":I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "ch":C
    :cond_0
    return-object v6
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 374
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 378
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 375
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 344
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static interpolateAngle(FFF)F
    .locals 5
    .param p0, "source"    # F
    .param p1, "target"    # F
    .param p2, "progress"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    .line 294
    sub-float v0, p1, p0

    .line 295
    .local v0, "diff":F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    add-float/2addr v0, v3

    .line 296
    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    sub-float/2addr v0, v3

    .line 298
    :cond_1
    mul-float v2, v0, p2

    add-float v1, p0, v2

    .line 299
    .local v1, "result":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    add-float/2addr v1, v3

    .end local v1    # "result":F
    :cond_2
    return v1
.end method

.method public static interpolateScale(FFF)F
    .locals 1
    .param p0, "source"    # F
    .param p1, "target"    # F
    .param p2, "progress"    # F

    .prologue
    .line 304
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "exifMake"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 191
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 401
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 404
    :cond_0
    :goto_0
    return-object v1

    .line 402
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 404
    .local v0, "length":I
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 151
    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 153
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 154
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 155
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 156
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 157
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 158
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static parseFloatSafely(Ljava/lang/String;F)F
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 312
    if-nez p0, :cond_0

    .line 316
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 314
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parseIntSafely(Ljava/lang/String;I)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 321
    if-nez p0, :cond_0

    .line 325
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 323
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static performInvestEn(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public static performInvestEx(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 165
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static swap([III)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 195
    aget v0, p0, p1

    .line 196
    .local v0, "temp":I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 197
    aput v0, p0, p2

    .line 198
    return-void
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 335
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
