.class public final enum Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;
.super Ljava/lang/Enum;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_CAMERA:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_FACEBOOK:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_MATERIAL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_MICROALBUM:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_PHOTO_GRPAHER:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_SIZE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

.field public static final enum TASK_TYPE_WEIXIN:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_WEIBO"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 22
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_MICROALBUM"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_MICROALBUM:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 23
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_MATERIAL"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_MATERIAL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 24
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_WEIXIN"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIXIN:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 25
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_FACEBOOK"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_FACEBOOK:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 26
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_CAMERA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_CAMERA:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 28
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_SIZE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_SIZE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 30
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    const-string v1, "TASK_TYPE_PHOTO_GRPAHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_PHOTO_GRPAHER:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_MICROALBUM:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_MATERIAL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIXIN:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_FACEBOOK:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_CAMERA:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_SIZE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_PHOTO_GRPAHER:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    return-object v0
.end method
