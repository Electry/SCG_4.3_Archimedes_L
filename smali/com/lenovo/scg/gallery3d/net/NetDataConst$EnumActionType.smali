.class public final enum Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;
.super Ljava/lang/Enum;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

.field public static final enum ACTION_TYPE_DEL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

.field public static final enum ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

.field public static final enum ACTION_TYPE_POST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    const-string v1, "ACTION_TYPE_GET"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 36
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    const-string v1, "ACTION_TYPE_POST"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_POST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 37
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    const-string v1, "ACTION_TYPE_DEL"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_DEL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_POST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_DEL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    return-object v0
.end method
