#
# Autogenerated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module Thrift
  module Test
    module Numberz
      ONE = 1
      TWO = 2
      THREE = 3
      FIVE = 5
      SIX = 6
      EIGHT = 8
      VALUE_MAP = {1 => "ONE", 2 => "TWO", 3 => "THREE", 5 => "FIVE", 6 => "SIX", 8 => "EIGHT"}
      VALID_VALUES = Set.new([ONE, TWO, THREE, FIVE, SIX, EIGHT]).freeze
    end

    class Bonk
      include ::Thrift::Struct, ::Thrift::Struct_Union
      MESSAGE = 1
      TYPE = 2

      FIELDS = {
        MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'},
        TYPE => {:type => ::Thrift::Types::I32, :name => 'type'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Bools
      include ::Thrift::Struct, ::Thrift::Struct_Union
      IM_TRUE = 1
      IM_FALSE = 2

      FIELDS = {
        IM_TRUE => {:type => ::Thrift::Types::BOOL, :name => 'im_true'},
        IM_FALSE => {:type => ::Thrift::Types::BOOL, :name => 'im_false'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Xtruct
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STRING_THING = 1
      BYTE_THING = 4
      I32_THING = 9
      I64_THING = 11

      FIELDS = {
        STRING_THING => {:type => ::Thrift::Types::STRING, :name => 'string_thing'},
        BYTE_THING => {:type => ::Thrift::Types::BYTE, :name => 'byte_thing'},
        I32_THING => {:type => ::Thrift::Types::I32, :name => 'i32_thing'},
        I64_THING => {:type => ::Thrift::Types::I64, :name => 'i64_thing'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Xtruct2
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BYTE_THING = 1
      STRUCT_THING = 2
      I32_THING = 3

      FIELDS = {
        BYTE_THING => {:type => ::Thrift::Types::BYTE, :name => 'byte_thing'},
        STRUCT_THING => {:type => ::Thrift::Types::STRUCT, :name => 'struct_thing', :class => ::Thrift::Test::Xtruct},
        I32_THING => {:type => ::Thrift::Types::I32, :name => 'i32_thing'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Xtruct3
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STRING_THING = 1
      CHANGED = 4
      I32_THING = 9
      I64_THING = 11

      FIELDS = {
        STRING_THING => {:type => ::Thrift::Types::STRING, :name => 'string_thing'},
        CHANGED => {:type => ::Thrift::Types::I32, :name => 'changed'},
        I32_THING => {:type => ::Thrift::Types::I32, :name => 'i32_thing'},
        I64_THING => {:type => ::Thrift::Types::I64, :name => 'i64_thing'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Insanity
      include ::Thrift::Struct, ::Thrift::Struct_Union
      USERMAP = 1
      XTRUCTS = 2

      FIELDS = {
        USERMAP => {:type => ::Thrift::Types::MAP, :name => 'userMap', :key => {:type => ::Thrift::Types::I32, :enum_class => ::Thrift::Test::Numberz}, :value => {:type => ::Thrift::Types::I64}},
        XTRUCTS => {:type => ::Thrift::Types::LIST, :name => 'xtructs', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Thrift::Test::Xtruct}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class CrazyNesting
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STRING_FIELD = 1
      SET_FIELD = 2
      LIST_FIELD = 3
      BINARY_FIELD = 4

      FIELDS = {
        STRING_FIELD => {:type => ::Thrift::Types::STRING, :name => 'string_field'},
        SET_FIELD => {:type => ::Thrift::Types::SET, :name => 'set_field', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Thrift::Test::Insanity}, :optional => true},
        LIST_FIELD => {:type => ::Thrift::Types::LIST, :name => 'list_field', :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::I32}}, :value => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::STRUCT, :class => ::Thrift::Test::Insanity}, :value => {:type => ::Thrift::Types::STRING}}}}}}},
        BINARY_FIELD => {:type => ::Thrift::Types::STRING, :name => 'binary_field', :binary => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field list_field is unset!') unless @list_field
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Xception < ::Thrift::Exception
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ERRORCODE = 1
      MESSAGE = 2

      FIELDS = {
        ERRORCODE => {:type => ::Thrift::Types::I32, :name => 'errorCode'},
        MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Xception2 < ::Thrift::Exception
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ERRORCODE = 1
      STRUCT_THING = 2

      FIELDS = {
        ERRORCODE => {:type => ::Thrift::Types::I32, :name => 'errorCode'},
        STRUCT_THING => {:type => ::Thrift::Types::STRUCT, :name => 'struct_thing', :class => ::Thrift::Test::Xtruct}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class EmptyStruct
      include ::Thrift::Struct, ::Thrift::Struct_Union

      FIELDS = {

      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class OneField
      include ::Thrift::Struct, ::Thrift::Struct_Union
      FIELD = 1

      FIELDS = {
        FIELD => {:type => ::Thrift::Types::STRUCT, :name => 'field', :class => ::Thrift::Test::EmptyStruct}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class VersioningTestV1
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BEGIN_IN_BOTH = 1
      OLD_STRING = 3
      END_IN_BOTH = 12

      FIELDS = {
        BEGIN_IN_BOTH => {:type => ::Thrift::Types::I32, :name => 'begin_in_both'},
        OLD_STRING => {:type => ::Thrift::Types::STRING, :name => 'old_string'},
        END_IN_BOTH => {:type => ::Thrift::Types::I32, :name => 'end_in_both'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class VersioningTestV2
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BEGIN_IN_BOTH = 1
      NEWINT = 2
      NEWBYTE = 3
      NEWSHORT = 4
      NEWLONG = 5
      NEWDOUBLE = 6
      NEWSTRUCT = 7
      NEWLIST = 8
      NEWSET = 9
      NEWMAP = 10
      NEWSTRING = 11
      END_IN_BOTH = 12

      FIELDS = {
        BEGIN_IN_BOTH => {:type => ::Thrift::Types::I32, :name => 'begin_in_both'},
        NEWINT => {:type => ::Thrift::Types::I32, :name => 'newint'},
        NEWBYTE => {:type => ::Thrift::Types::BYTE, :name => 'newbyte'},
        NEWSHORT => {:type => ::Thrift::Types::I16, :name => 'newshort'},
        NEWLONG => {:type => ::Thrift::Types::I64, :name => 'newlong'},
        NEWDOUBLE => {:type => ::Thrift::Types::DOUBLE, :name => 'newdouble'},
        NEWSTRUCT => {:type => ::Thrift::Types::STRUCT, :name => 'newstruct', :class => ::Thrift::Test::Bonk},
        NEWLIST => {:type => ::Thrift::Types::LIST, :name => 'newlist', :element => {:type => ::Thrift::Types::I32}},
        NEWSET => {:type => ::Thrift::Types::SET, :name => 'newset', :element => {:type => ::Thrift::Types::I32}},
        NEWMAP => {:type => ::Thrift::Types::MAP, :name => 'newmap', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::I32}},
        NEWSTRING => {:type => ::Thrift::Types::STRING, :name => 'newstring'},
        END_IN_BOTH => {:type => ::Thrift::Types::I32, :name => 'end_in_both'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListTypeVersioningV1
      include ::Thrift::Struct, ::Thrift::Struct_Union
      MYINTS = 1
      HELLO = 2

      FIELDS = {
        MYINTS => {:type => ::Thrift::Types::LIST, :name => 'myints', :element => {:type => ::Thrift::Types::I32}},
        HELLO => {:type => ::Thrift::Types::STRING, :name => 'hello'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListTypeVersioningV2
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STRINGS = 1
      HELLO = 2

      FIELDS = {
        STRINGS => {:type => ::Thrift::Types::LIST, :name => 'strings', :element => {:type => ::Thrift::Types::STRING}},
        HELLO => {:type => ::Thrift::Types::STRING, :name => 'hello'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class GuessProtocolStruct
      include ::Thrift::Struct, ::Thrift::Struct_Union
      MAP_FIELD = 7

      FIELDS = {
        MAP_FIELD => {:type => ::Thrift::Types::MAP, :name => 'map_field', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class LargeDeltas
      include ::Thrift::Struct, ::Thrift::Struct_Union
      B1 = 1
      B10 = 10
      B100 = 100
      CHECK_TRUE = 500
      B1000 = 1000
      CHECK_FALSE = 1500
      VERTWO2000 = 2000
      A_SET2500 = 2500
      VERTWO3000 = 3000
      BIG_NUMBERS = 4000

      FIELDS = {
        B1 => {:type => ::Thrift::Types::STRUCT, :name => 'b1', :class => ::Thrift::Test::Bools},
        B10 => {:type => ::Thrift::Types::STRUCT, :name => 'b10', :class => ::Thrift::Test::Bools},
        B100 => {:type => ::Thrift::Types::STRUCT, :name => 'b100', :class => ::Thrift::Test::Bools},
        CHECK_TRUE => {:type => ::Thrift::Types::BOOL, :name => 'check_true'},
        B1000 => {:type => ::Thrift::Types::STRUCT, :name => 'b1000', :class => ::Thrift::Test::Bools},
        CHECK_FALSE => {:type => ::Thrift::Types::BOOL, :name => 'check_false'},
        VERTWO2000 => {:type => ::Thrift::Types::STRUCT, :name => 'vertwo2000', :class => ::Thrift::Test::VersioningTestV2},
        A_SET2500 => {:type => ::Thrift::Types::SET, :name => 'a_set2500', :element => {:type => ::Thrift::Types::STRING}},
        VERTWO3000 => {:type => ::Thrift::Types::STRUCT, :name => 'vertwo3000', :class => ::Thrift::Test::VersioningTestV2},
        BIG_NUMBERS => {:type => ::Thrift::Types::LIST, :name => 'big_numbers', :element => {:type => ::Thrift::Types::I32}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class NestedListsI32x2
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INTEGERLIST = 1

      FIELDS = {
        INTEGERLIST => {:type => ::Thrift::Types::LIST, :name => 'integerlist', :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32}}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class NestedListsI32x3
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INTEGERLIST = 1

      FIELDS = {
        INTEGERLIST => {:type => ::Thrift::Types::LIST, :name => 'integerlist', :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32}}}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class NestedMixedx2
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INT_SET_LIST = 1
      MAP_INT_STRSET = 2
      MAP_INT_STRSET_LIST = 3

      FIELDS = {
        INT_SET_LIST => {:type => ::Thrift::Types::LIST, :name => 'int_set_list', :element => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::I32}}},
        MAP_INT_STRSET => {:type => ::Thrift::Types::MAP, :name => 'map_int_strset', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::STRING}}},
        MAP_INT_STRSET_LIST => {:type => ::Thrift::Types::LIST, :name => 'map_int_strset_list', :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::STRING}}}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListBonks
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BONK = 1

      FIELDS = {
        BONK => {:type => ::Thrift::Types::LIST, :name => 'bonk', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Thrift::Test::Bonk}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class NestedListsBonk
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BONK = 1

      FIELDS = {
        BONK => {:type => ::Thrift::Types::LIST, :name => 'bonk', :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::STRUCT, :class => ::Thrift::Test::Bonk}}}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BoolTest
      include ::Thrift::Struct, ::Thrift::Struct_Union
      B = 1
      S = 2

      FIELDS = {
        B => {:type => ::Thrift::Types::BOOL, :name => 'b', :default => true, :optional => true},
        S => {:type => ::Thrift::Types::STRING, :name => 's', :default => %q"true", :optional => true}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class StructA
      include ::Thrift::Struct, ::Thrift::Struct_Union
      S = 1

      FIELDS = {
        S => {:type => ::Thrift::Types::STRING, :name => 's'}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field s is unset!') unless @s
      end

      ::Thrift::Struct.generate_accessors self
    end

    class StructB
      include ::Thrift::Struct, ::Thrift::Struct_Union
      AA = 1
      AB = 2

      FIELDS = {
        AA => {:type => ::Thrift::Types::STRUCT, :name => 'aa', :class => ::Thrift::Test::StructA, :optional => true},
        AB => {:type => ::Thrift::Types::STRUCT, :name => 'ab', :class => ::Thrift::Test::StructA}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field ab is unset!') unless @ab
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
