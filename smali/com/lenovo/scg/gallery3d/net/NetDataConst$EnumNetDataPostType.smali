.class public final enum Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;
.super Ljava/lang/Enum;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumNetDataPostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

.field public static final enum POST_TYPE_COMMMENT:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

.field public static final enum POST_TYPE_REPOST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    const-string v1, "POST_TYPE_COMMMENT"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->POST_TYPE_COMMMENT:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    .line 101
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    const-string v1, "POST_TYPE_REPOST"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->POST_TYPE_REPOST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->POST_TYPE_COMMMENT:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->POST_TYPE_REPOST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataPostType;

    return-object v0
.end method
