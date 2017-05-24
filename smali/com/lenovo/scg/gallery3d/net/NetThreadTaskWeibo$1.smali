.class synthetic Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;
.super Ljava/lang/Object;
.source "NetThreadTaskWeibo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataPostType:[I

.field static final synthetic $SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

.field static final synthetic $SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_AUTO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_LARGE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_MIDDLE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumWbPicGetMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_SMALL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    .line 85
    :goto_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataPostType:[I

    :try_start_4
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataPostType:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->POST_TYPE_COMMMENT:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataPostType:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->POST_TYPE_REPOST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 68
    :goto_5
    invoke-static {}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    :try_start_6
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskWeibo$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BITMAP:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 85
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    .line 229
    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
